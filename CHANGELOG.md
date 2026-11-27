# GigaWALL - note di rilascio

Le novità di ogni versione, dalla più recente. I router le mostrano in
Manutenzione > Aggiornamenti > Note di rilascio.

## 1.13.18 - 27/11/2026
- Access point Cambium: dopo Applica le modifiche arrivano subito agli access point cambiati, senza aspettare il giro di lettura

## 1.13.17 - 27/11/2026
- Access point: bottoni «Gestisci» e «Larghezza canale» sulle righe scelte, descrizione per ogni access point

## 1.13.16 - 27/11/2026
- Access point Cambium: reti wifi su VLAN (la porta del cavo dell'AP passa a trunk con riavvio di sicurezza)
- Reti wifi: casella «Portale» su ogni rete
- La rete con il portale esce su una VLAN sua, che il pannello crea da solo

## 1.13.15 - 26/11/2026
- Wifi: radio degli access point su una riga sola (canale, potenza, larghezza in grassetto)
- Un Cambium passa a «Gestito» solo dopo essere stato letto
- Access point Cambium: aggiornamento del firmware dal pannello (immagine caricata dall'amministratore, uno alla volta), con la versione consigliata accanto a ogni AP

## 1.13.14 - 26/11/2026
- Liste: selezione di più righe con Ctrl e Maiusc, come in Windows (Rimuovi, Attiva e Disattiva su tutte le righe scelte). Wifi: access point in attesa selezionabili allo stesso modo, con un solo bottone Adotta

## 1.13.13 - 26/11/2026
- Access point Cambium: dopo un ripristino di fabbrica tornano a trasmettere (paese delle radio), il nome del pannello diventa il nome dell'AP, nessuna modifica mentre un riavvio o un ripristino sono in corso

## 1.13.12 - 26/11/2026
- Log di sistema: scadenza a 30 giorni (regolabile in Sistema > Generale) e richieste DNS tenute fuori

## 1.13.11 - 26/11/2026
- GW-107: il collegamento interno con l'x86 (ntb0) non è una porta
- GW-107: configurazione di fabbrica sulle porte segnate sul frontale

## 1.13.10 - 26/11/2026
- Portale centrale: VPN mostrate come su/totali

## 1.13.09 - 26/11/2026
- Notifiche e-mail: con il portale centrale collegato resta modificabile Quando inviare, e vale per gli avvisi inviati dal portale

## 1.13.08 - 26/11/2026
- Collegato al portale centrale, gli avvisi li invia il portale: la pagina Notifiche e-mail resta ma oscurata

## 1.13.07 - 26/11/2026
- Il portale centrale può aprire il pannello del firewall senza altra password (si può vietare in Manutenzione, Portale centrale)

## 1.13.06 - 26/11/2026
- Portale centrale (Manutenzione): il firewall si collega al portale GigaMonitor, spento finché non si inserisce il codice
- Annuncio ARP degli indirizzi all'avvio e dopo le modifiche di rete
- Modello GW-107 riconosciuto

## 1.13.05 - 26/11/2026
- Cambium: bottoni Riavvia e Ripristina, adozione di un AP di fabbrica con la password comune. Utenti e dispositivi: colonne ordinabili. Barra delle liste fissa fino al bordo

## 1.13.04 - 26/11/2026
- Accessi al dominio: il riconoscimento non si ferma più (scritture della mappa utenti una alla volta, i cicli ripartono da soli dopo un errore). Liste: la barra Aggiungi/Modifica/Rimuovi resta in vista mentre si scorre.

## 1.13.03 - 25/11/2026
- Wifi Cambium cnPilot: l'annullamento del riavvio di sicurezza viene anche attivato sull'access point

## 1.13.02 - 25/11/2026
- Wifi Cambium cnPilot: rete dell'AP (indirizzo, subnet, gateway, DNS) dal pannello con ritorno automatico
- Fuso orario di GigaWALL
- Larghezza di canale nelle colonne
- Adotta tutti i Cambium

## 1.13.01 - 25/11/2026
- Wifi: access point Cambium cnPilot gestiti da GigaWALL (reti wifi e radio)
- Un AP in attesa non visto da 5 minuti esce dall'elenco

## 1.12.20 - 25/11/2026
- Wifi: access point Cambium cnPilot letti in SSH (sola lettura): stato, canali e client

## 1.12.19 - 25/11/2026
- Protezione: un IP bloccato puo' comunque fare la VPN (IKE ed ESP) sulle WAN con una VPN attiva

## 1.12.18 - 25/11/2026
- Registro navigazione: nascoste le richieste DNS dei server DNS della rete (restano registrate)

## 1.12.17 - 24/11/2026
- Aggiornamenti: la barra di avanzamento compare sempre

## 1.12.16 - 24/11/2026
- Manutenzione: bottone Spegni ora

## 1.12.15 - 24/11/2026
- Pannello: messaggi di conferma brevi

## 1.12.14 - 24/11/2026
- Pannello: messaggio Salvato senza vale subito

## 1.12.13 - 24/11/2026
- Wifi: access point ripristinato con le versioni precedenti tolto dagli adottati
- Riadozione come AP nuovo

## 1.12.12 - 24/11/2026
- Wifi: Ripristina toglie l'access point dagli adottati e lo rimette tra quelli in attesa come nuovo

## 1.12.11 - 24/11/2026
- Wifi: access point ripristinato solo tra gli adottati, con Adotta di nuovo

## 1.12.10 - 24/11/2026
- Aggiornamenti: versione e bottoni su una sola riga

## 1.12.09 - 24/11/2026
- Applica senza finestra di conferma se non ci sono avvisi
- Messaggio Applicato

## 1.12.08 - 24/11/2026
- Applica senza conto alla rovescia: la configurazione resta confermata subito
- Installazione dalla ISO anche senza rete
- ISO con chiave SSH per gwadmin

## 1.12.07 - 24/11/2026
- Aggiornamenti: riquadri di avanzamento ed esito sempre visibili
- Aggiorna ora risulta manuale nello storico

## 1.12.06 - 24/11/2026
- Backup su GitHub 20 secondi dopo ogni modifica salvata dal pannello, anche senza Applica

## 1.12.05 - 24/11/2026
- Pannello: pulsante Note di rilascio con lo storico di tutte le versioni

## 1.12.04 - 24/11/2026
- Barra di avanzamento degli aggiornamenti con le fasi

## 1.12.03 - 24/11/2026
- Backup cifrato su GitHub dopo ogni modifica e ripristino da GitHub
- Il backup comprende chiavi degli AP, certificati, CA e logo

## 1.12.02 - 24/11/2026
- Reti wifi assegnabili a singoli access point (spunte)
- Pannello raggiungibile anche dalla LAN2 nella configurazione di fabbrica

## 1.12.01 - 23/11/2026
- Pannello: le spiegazioni delle pagine (?) si aprono intere

## 1.11.20 - 23/11/2026
- Pannello: tema scuro stile GigaDesk, con il verde del logo al posto dell'azzurro

## 1.11.19 - 23/11/2026
- Wifi: nome dei client dai lease DHCP e dagli oggetti host, colonna Host con + host nella scheda Client

## 1.11.18 - 23/11/2026
- Pannello: aggiornamenti periodici silenziosi su tutte le pagine, colonna Host per il bottone + host
- Wifi: firmware riconosciuto per i modelli come l'U7-IW (G7IW)

## 1.11.17 - 23/11/2026
- Pannello: aggiornamenti automatici silenziosi, senza lampeggio della pagina Access point

## 1.11.16 - 23/11/2026
- Wifi: Riavvia, Ripristina e aggiornamento firmware degli access point (automatico all'adozione per i modelli provati)

## 1.11.15 - 23/11/2026
- Bottone '+ host' in Utenti e dispositivi e in Navigazione: crea l'oggetto indirizzo senza navigazione libera

## 1.11.14 - 23/11/2026
- Wifi: controller per access point UniFi (adozione, reti WPA2/aperte su VLAN, radio alla larghezza massima) e interfacce VLAN

## 1.11.13 - 23/11/2026
- Portale: pagina di accesso centrata sull'iPhone (niente zoom sui campi)

## 1.11.12 - 22/11/2026
- Stampanti della LAN visibili ai cellulari sul wifi (riflettore mDNS)

## 1.11.11 - 22/11/2026
- Pannello: icone della striscia sistemate nella dashboard

## 1.11.10 - 22/11/2026
- Pannello: dashboard a tutta pagina, tabelle più compatte, menu e testi sistemati

## 1.11.09 - 22/11/2026
- Portale: dopo il login il bottone Continua apre la pagina richiesta (tolto Esci)

## 1.11.08 - 22/11/2026
- Portale: il DNS passa anche prima del login (prima il portale poteva non aprirsi)

## 1.11.07 - 22/11/2026
- Portale: pagina di accesso in https con il nome e il certificato Let's Encrypt (nessun avviso per gli ospiti del wifi)

## 1.11.06 - 22/11/2026
- Certificati: Let's Encrypt via DNS (deSEC) per pannello e portale

## 1.11.05 - 22/11/2026
- Porte: velocità negoziata sotto ogni presa

## 1.11.04 - 22/11/2026
- Porte: prese RJ45 disegnate, interfacce con parentesi, ruolo porte allineato

## 1.11.03 - 22/11/2026
- Portale: scritta GigaWALL GW-100 sotto Accedi, logo attuale sul colore dell'intestazione

## 1.11.02 - 22/11/2026
- Portale: Accedi unico, logo sull'intestazione, titolo facoltativo, colori personalizzabili, voucher barrati

## 1.11.01 - 22/11/2026
- Portale: voucher (creazione, stampa, accesso), metodi di accesso, intestazione e colore della barra

## 1.10.20 - 22/11/2026
- Portale di accesso: anteprima dal vivo della pagina di login

## 1.10.19 - 22/11/2026
- Nome host applicato al sistema e al certificato del pannello
- Modello GW-100 mostrato a parte

## 1.10.18 - 22/11/2026
- Pannello: anche i riquadri gialli di spiegazione delle pagine si aprono col pulsante ?

## 1.10.17 - 21/11/2026
- Pannello: spiegazioni con pulsante ?, logo solo nel portale utenti, registro navigazione in pagina propria, policy (autenticazione con gruppi, NAT collegato), ordinamento colonne, Geo-IP per continente, contatori e impaginazione rivisti

## 1.10.16 - 21/11/2026
- Backup della configurazione via e-mail, settimanale o mensile (Manutenzione > Backup e ripristino)

## 1.10.15 - 21/11/2026
- Verifica dominio del filtro DNS su tutte le interfacce del profilo
- Le ricerche inverse (.arpa) non compaiono più come siti bloccati nel registro navigazione

## 1.10.14 - 21/11/2026
- Filtro DNS: nel registro navigazione e nella pagina di blocco il motivo arriva anche dai profili scelti nelle policy (es. Social network)

## 1.10.13 - 21/11/2026
- Gruppi utenti (AD e locali) nelle policy
- Filtro DNS scelto nella policy (Nessuno o un profilo), profili usabili solo nelle policy
- Whitelist globale con flag per profilo
- Installazione dal terminale del pannello completa

## 1.10.12 - 21/11/2026
- Filtro DNS: nuova categoria Malware, phishing e truffe
- Pubblicità e tracciamento ora separata e facoltativa

## 1.10.11 - 21/11/2026
- Maschere con doppia lista più grandi, con ricerca, conteggi e sposta tutti

## 1.10.10 - 21/11/2026
- Certificato del pannello: comprende sempre gli IP delle LAN e si rifà da solo quando cambiano

## 1.10.09 - 21/11/2026
- Pannello: la dashboard non si sovrappone più alle altre pagine (es. NAT dopo Applica)

## 1.10.08 - 20/11/2026
- Pannello: dipendenza python3-python-multipart
- ISO di installazione

## 1.10.07 - 20/11/2026
- ISO di installazione
- Chrony e locales tra i pacchetti necessari

## 1.10.06 - 20/11/2026
- OpenVPN: accesso anche per gli utenti del dominio, autorizzazioni per utente

## 1.10.05 - 20/11/2026
- Server OpenVPN per l'accesso remoto

## 1.10.04 - 20/11/2026
- Nome host di fabbrica GW-100

## 1.10.03 - 20/11/2026
- Configurazione di fabbrica, installazione da zero, prenotazioni DHCP, ripristino di fabbrica

## 1.10.01 - 20/11/2026
- Prima versione con aggiornamento automatico
