#!/bin/bash
# Installazione di GigaWALL su un Ubuntu Server (24.04 o successivo) appena installato.
# Va pubblicato nel repository dei rilasci (lo copia tools/release.sh).
#
#   curl -fsSL https://raw.githubusercontent.com/Hascanio35/Gigawall-releases/main/setup.sh | sudo bash -s -- CODICE
#
# CODICE è il codice di installazione (chi rilascia GigaWALL lo conosce).
# Opzione: --gestione-da 192.168.8.0/24  pannello e SSH raggiungibili anche dalla WAN, solo da
#          quella rete (per installare da remoto; la regola si toglie poi dal pannello).
# Dopo l'installazione: P1 WAN in DHCP, P2 lan1 https://192.168.100.1, P3 lan2 192.168.200.1,
# utente admin, password GigaWALL (da cambiare al primo accesso).
set -euo pipefail
BASE=https://raw.githubusercontent.com/Hascanio35/Gigawall-releases/main
PUBKEY=y4qMJUqkNi83i/0DJdNDbVOynvqWWFzR3aswXBW7MLg=
CODE=${1:-}
shift || true
GESTIONE=""
while [ $# -gt 0 ]; do
  case "$1" in
    --gestione-da) GESTIONE=${2:-}; shift 2 ;;
    *) echo "opzione sconosciuta: $1"; exit 2 ;;
  esac
done
[ "$(id -u)" = 0 ] || { echo "lancialo con sudo"; exit 1; }
[[ "$CODE" =~ ^[0-9a-f]{64}$ ]] || { echo "codice di installazione mancante o non valido"; exit 1; }
grep -qi ubuntu /etc/os-release || { echo "serve Ubuntu Server"; exit 1; }

echo "== pacchetti di base"
apt-get update -q >/dev/null
DEBIAN_FRONTEND=noninteractive apt-get install -y -q python3 python3-cryptography curl >/dev/null

W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
echo "== scarico l'ultima versione"
curl -fsSL "$BASE/latest.json?t=$(date +%s)" -o "$W/latest.json"
python3 - "$W" "$PUBKEY" "$CODE" "$BASE" <<'PY'
import base64, hashlib, io, json, re, sys, tarfile, urllib.request
from cryptography.hazmat.primitives.asymmetric.ed25519 import Ed25519PublicKey
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
w, pub, code, base = sys.argv[1:5]
outer = json.load(open(f"{w}/latest.json"))
raw, sig = base64.b64decode(outer["manifest"]), base64.b64decode(outer["sig"])
Ed25519PublicKey.from_public_bytes(base64.b64decode(pub)).verify(sig, raw)  # eccezione se falsa
m = json.loads(raw)
assert m["product"] == "GigaWALL" and re.fullmatch(r"gigawall-[0-9.]+\.bin", m["file"])
data = urllib.request.urlopen(f"{base}/{m['file']}", timeout=120).read()
if hashlib.sha256(data).hexdigest() != m["sha256"]:
    sys.exit("pacchetto non corrispondente al rilascio firmato")
d = Cipher(algorithms.AES(bytes.fromhex(code)), modes.CTR(bytes.fromhex(m["iv"]))).decryptor()
try:
    t = tarfile.open(fileobj=io.BytesIO(d.update(data) + d.finalize()), mode="r:gz")
except tarfile.TarError:
    sys.exit("codice di installazione errato")
t.extractall(w, filter="data")
print(f"GigaWALL {m['version']} ({m.get('date', '')}): firma verificata")
open(f"{w}/version", "w").write(m["version"])
PY
V=$(cat "$W/version")
echo "== installo GigaWALL $V"
GIGAWALL_GESTIONE_DA="$GESTIONE" bash "$W/gigawall-$V/deploy/install.sh" "$W/gigawall-$V"
echo
echo "Fatto. Collega un PC alla porta P2 e apri https://192.168.100.1"
echo "utente admin, password GigaWALL (ti chiederà di cambiarla)"
[ -n "$GESTIONE" ] && echo "Dalla rete $GESTIONE il pannello risponde anche sull'IP della WAN (P1)."
exit 0
