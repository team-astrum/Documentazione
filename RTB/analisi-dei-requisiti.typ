#import "../Template/tmp-documentazione.typ": conf, usecase, G

#show: conf.with(
  titolo: "Analisi dei Requisiti",
  status: "Da approvare", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Filippo De Guio", "Matteo De Col", "Gianluca Bacco"),
  verifica: ("Samuele Gobbi",),
  approvazione: " ",
  changelog: (
    (ver: "0.3.0", data: "2026-11-19", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"", desc: "Stesuara Casi d'Uso da UC11 a UC20"),
    (ver: "0.2.0", data: "2026-11-18", autore: "Gianluca Brotto", ruolo: "Redattore", verificatore:"Filippo De Guio", desc: "Stesuara Introduzione e Attori della sezione Casi d'Uso"),
    (ver: "0.1.0", data: "2026-11-09", autore: "Filippo De Guio", ruolo: "Redattore", verificatore:"Samuele Gobbi", desc: "Completamento della sezione introduttiva."),
    (ver: "0.0.1", data: "2026-11-07", autore: "Filippo De Guio", ruolo: "Redattore", verificatore:"Samuele Gobbi", desc: "Creazione e stesura della bozza iniziale di documento."),
  )
)

// --- INIZIO CONTENUTO DEL DOCUMENTO ---

= Introduzione 
== Scopo del documento
Il presente documento di #G("Analisi dei Requisiti", def: "Documento che definisce e formalizza tutti i requisiti funzionali, non funzionali e di vincolo del sistema.") definisce in modo formale, completo e strutturato i requisiti funzionali e non funzionali del sistema software AIRA, da sviluppare nell’ambito del progetto didattico del corso
di Ingegneria del Software. Il testo formalizza la modellazione dei casi d'uso e la specifica dettagliata dei requisiti (funzionali, qualitativi e di vincolo) relativi al capitolato C0, proposto dall'azienda Sanmarco Informatica S.p.A..

La definizione dei contenuti qui riportati nasce da uno studio approfondito del materiale di capitolato fornito e dal confronto diretto con i referenti aziendali durante le sessioni di chiarimento dei requisiti.

Il documento funge da contratto operativo e concettuale per l'intero sviluppo del software, orientando le successive fasi di progettazione architetturale, codifica, verifica e collaudo finale. Il suo obiettivo primario è garantire il completo allineamento tra la soluzione tecnica realizzata e le aspettative del proponente.

Per strutturare in modo chiaro le priorità di sviluppo, ciascun requisito individuato viene categorizzato secondo la seguente gerarchia:

- *Obbligatorio*: proprietà o funzionalità indispensabile, la cui assenza compromette l'accettazione del prodotto;

- *Desiderabile*: funzionalità ad alto valore aggiunto che arricchisce il sistema, pur non essendo strettamente vincolante per l'#G("MVP");

- *Opzionale*: elemento accessorio o prestazionale, valutabile per integrazioni future o revisioni avanzate.

Il contenuto della presente analisi è indirizzato alle seguenti figure di progetto:

- *Sanmarco Informatica S.p.A.* (Proponente): per validare la correttezza delle specifiche e l'interpretazione dei bisogni aziendali;

- *Prof. Tullio Vardanega* e *Prof. Riccardo Cardin* (Committenti): per accertare la conformità del documento agli standard qualitativi e didattici richiesti;

- *Progettisti* e *Programmatori*: come riferimento vincolante per l'architettura del software e la stesura del codice;

- *Verificatori*: come base per la progettazione dei test di unità, di integrazione e delle procedure di collaudo.

== Prospettiva del prodotto
Il sistema AIRA (AI Requests Automation) si propone come un motore middleware multimodale guidato dall'Intelligenza Artificiale, progettato per automatizzare la ricezione, l'estrazione semantica e l'esecuzione di richieste aziendali #G("B2B (Business-to-Business)", def: "Modello commerciale e di scambio dati in cui le transazioni economiche, le comunicazioni e la condivisione di informazioni avvengono esclusivamente tra aziende o operatori commerciali, anziché tra un'azienda e il consumatore finale.") destinate ai sistemi #G("ERP (Enterprise Resource Planning)", def: "Sistema software di gestione integrata che centralizza e automatizza i principali processi operativi e amministrativi di un'azienda."), #G("CRM (Customer Relationship Management)", def: "Sistema software utilizzato per gestire le interazioni con i clienti per l'ottimizzazione dei processi aziendali."), o portali B2B.

La piattaforma acquisisce ed elabora automaticamente flussi informativi non strutturati provenienti da canali eterogenei (e-mail con allegati PDF, note vocali, messaggi testuali, filesystem ed etichette scansionate).

Attraverso una pipeline modulare basata su modelli di visione artificiale, #G("OCR (Optical Character Recognition)", def: "Tecnologia di riconoscimento ottico dei caratteri che trasforma immagini, scansioni di documenti cartacei o file PDF in testo digitale codificato."), #G("Speech-to-Text", def: "Tecnologia di conversione del parlato in testo scritto."), e modelli linguistici (#G("LLM", def: "Modello Linguistico di grandi dimensioni che può generare testo coerente e contestualmente rilevante.")), AIRA riconosce l'intenzione del messaggio ed estrae le entità rilevanti, convertendole in payload strutturati (#G("JSON") o  #G("record", def: "Singola riga di una tabella di un database relazionale che raggruppa un insieme di dati correlati relativi a una specifica entità.") di #G("database", def: "Struttura dati utilizzata per organizzare e memorizzare informazioni in modo sistematico e accessibile.")).

L'architettura garantisce sicurezza multi-tenant e include un'interfaccia di amministrazione in Angular per la gestione dei canali e il monitoraggio dei log.

L'obiettivo primario è l'abbattimento dell'operatività manuale a basso valore aggiunto, la minimizzazione dei tempi di evasione e l'azzeramento degli errori di trascrizione nei processi aziendali.

== Funzioni del prodotto 
Il sistema AIRA offre le seguenti macro-funzionalità primarie:

- Monitoraggio multi-canale: acquisizione continua delle richieste provenienti da email, servizi di messaggistica e filesystem.
- Sicurezza e isolamento dei dati: identificazione e autorizzazione dei mittenti, con protezione da accessi non autorizzati e commistione di informazioni tra clienti.
- Elaborazione multimodale: trascrizione dei messaggi vocali tramite #G("Speech-to-Text") e estrazione di informazioni da immagini e documenti tramite #G("OCR") e #G("computer vision", def: "Tecnologia che consente ai sistemi di interpretare e analizzare immagini e video").
- Interpretazione semantica: analisi dei contenuti tramite #G("LLM") per individuare l'intento della richiesta e classificarla in base alla tipologia.
- Strutturazione e validazione dei dati: organizzazione delle informazioni estratte secondo modelli predefiniti e verifica della loro conformità prima dell'elaborazione.
- Integrazione con sistemi esterni: inoltro delle richieste strutturate verso sistemi #G("ERP"), #G("CRM"), portali #G("B2B") e sistemi di ticketing tramite API REST o email.
- Persistenza e tracciabilità: memorizzazione delle richieste, dei dati estratti e delle operazioni effettuate, con relativa cronologia.
- Interfaccia amministrativa: configurazione dei canali e delle regole operative, consultazione dello storico e gestione dei dati persistiti.

== Caratteristiche dell'Utente
Gli utenti che interagiscono con il sistema AIRA si dividono nelle seguenti categorie:

- Amministratore di Sistema: Gestisce la configurazione dei canali, le regole di notifica e il monitoraggio dei log tramite l'interfaccia web.
- Operatore Aziendale / Back-Office: Consulta e valida le richieste decodificate dall'IA prima o dopo l'inoltro ai gestionali ERP e CRM.
- Cliente / Mittente B2B: Invia richieste via e-mail, messaggi vocali o immagini senza interagire direttamente con la piattaforma.

== Glossario
Al fine di evitare incomprensioni o ambiguità relative al significato dei termini usati nella documentazione, i vocaboli di carattere tecnico, le sigle e i domini applicativi di particolare rilevanza sono raccolti e definiti all'interno del presente #link("https://team-astrum.github.io/Documentazione/glossario.pdf")[Glossario].

Per facilitare la lettura e la tracciabilità, la prima occorrenza di un termine presente nel glossario viene contrassegnata all'interno del testo con la lettera G posta a pedice. La presenza della lettera segnala al lettore la possibilità di consultare questa sezione per ottenere la definizione formale del concetto.

== Riferimenti
=== Riferimenti normativi
- #link("https://www.math.unipd.it/~tullio/IS-1/2026/Progetto/C0-AIRA.pdf")[Capitolato C0 - AIRA: AI Requests Automation] - Sanmarco Informatica S.p.A.
- #link("https://www.math.unipd.it/~tullio/IS-1/2026/Dispense/PD1.pdf")[Regolamento progetto didattico a.a. 2026/2027]
- #link("https://team-astrum.github.io/Documentazione/norme-di-progetto.pdf")[Norme di Progetto]
=== Riferimenti informativi
- #link("https://team-astrum.github.io/Documentazione/glossario.pdf")[Glossario]
- Dispense del corso di Ingegneria del Software, a.a. 2026/2027:
 - #link("https://www.math.unipd.it/~tullio/IS-1/2026/Dispense/T05.pdf")
 - #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")


#pagebreak()
= Casi d'Uso
== Introduzione
La presente sezione descrive le funzionalità offerte dal sistema _AIRA_ dal punto di vista degli utenti e dei sistemi esterni che interagiscono con esso, attraverso diagrammi dei #G("Casi d'Uso", def: "Un Caso d'Uso è un insieme di scenari (sequenze di azioni) che hanno in comune uno scopo finale (obiettivo) per un utente (attore).") e delle relative descrizioni testuali.

Per garantire uniformità e tracciabilità rispetto ai requisiti, ogni Caso d'Uso è identificato da un codice univoco con formato _UCn_, dove _n_ è un numero intero progressivo. Questa notazione si applica ai Casi d'Uso autonomi e a quelli che estendono un altro Caso d'Uso tramite relazione di estensione («extend»).

I Casi d'Uso che dipendono strutturalmente da un Caso d'Uso di riferimento, ovvero quelli ottenuti tramite relazione di inclusione («include») o di generalizzazione, adottano invece la notazione _UCn.m_, dove _n_ indica il Caso d'Uso di riferimento (rispettivamente, quello che include e quello generalizzato) e _m_ un numero progressivo interno ad esso.

Ciascun Caso d'Uso è corredato da una scheda strutturata che riporta:
+ *Attore principale:* l'#G("attore", def: "qualsiasi entità esterna al sistema che interagisce con esso per raggiungere un determinato obiettivo") che avvia il Caso d'Uso per raggiungere un obiettivo;
+ *Attori secondari:* sistemi o servizi esterni coinvolti durante l'esecuzione del flusso;
+ *Precondizioni:* condizioni che devono risultare vere prima dell'inizio del Caso d'Uso;
+ *Postcondizioni:* condizioni che risultano vere al termine dello scenario principale, a seguito del suo completamento con successo;
+ *Trigger:* l'evento che dà inizio all'esecuzione del Caso d'Uso;
+ *Scenario principale:* sequenza di passi che descrive il caso in cui l'obiettivo dell'attore principale viene raggiunto senza deviazioni;
+ *Scenari alternativi:* deviazioni dallo scenario principale, ciascuna associata alla condizione che la determina;
+ *Inclusioni:* Casi d'Uso inclusi dal Caso d'Uso corrente (relazione «include»). Il loro comportamento viene eseguito sempre e incondizionatamente durante lo scenario del Caso d'Uso base, che non può completarsi senza di essi;
+ *Estensioni:* Casi d'Uso che estendono il Caso d'Uso corrente (relazione «extend»). Vengono eseguiti solo al verificarsi di una condizione specifica;
+ *Specializzazioni:* varianti del Caso d'Uso generale e sono tra loro mutualmente esclusive, senza imporre un percorso di esecuzione obbligatorio;

== Attori 
Gli attori rappresentano le entità esterne al sistema che interagiscono direttamente con esso.
Quelli individuati sono:

- *Mittente (attore generalizzato):* soggetto esterno che invia richieste al sistema tramite i canali previsti.
  - *Cliente censito:* mittente presente nell'anagrafica. Invia richieste (e-mail con allegati, messaggi WhatsApp testuali e vocali) che il sistema deve elaborare. Può ricevere risposte automatiche in caso di ricezione o errore nella ricezione.
  - *Mittente non censito:* mittente non presente nell'anagrafica. Le sue richieste devono essere bloccate dal Filto Sicurezza.

- *Utente non autenticato:* soggetto che tenta di accedere all'interfaccia amministrativa prima di aver effettuato l'autenticazione.
- *Utente autenticato:* soggetto che si è autenticato al sistema. Per garantire un accesso differenziato si specializza nei seguenti profili:
  - *Amministratore*: utente con privilegi elevati, può configurare i canali attivi, consultare le richieste, consultare lo storico dei log e gestire la persistenza locale dei dati.
  - *Operatore:* utente che si occupa dell'eventuale validazione manuale delle richieste.
  
- *Canale e-mail:* casella di posta elettronica esterna monitorata dal sistema per l'acquisizione delle richieste (testo e allegati). Può essere utilizata anche per l'invio delle risposte automatiche al mittente.
- *Canale WhatsApp:* servizio di messaggistica esterno, monitorato dal sistema per l'acquisizione delle richieste (testuali e vocali). Può essere utilizzato anche per l'invio delle risposte automatiche al mittente.
- *Servizio LLM:* esegue l'interpretazione semantica. Riceve il testo da interpretare e restituisce le informazioni strutturate corrispondenti (tipologia della richiesta, entità rilevate, intenzione principale)
- *Sistema gestionale di destinazione* (#G("B2B"), #G("ERP"), #G("CRM"), ticketing): riceve i dati validati tramite #G("API REST", def: "interfaccia di programmazione che permette a due applicazioni di comunicare tra loro tramite internet usando lo stesso protocollo del web: HTTP").


== Lista dei Casi d'Uso

=== UC1 - Autenticazione Utente

=== UC10 - Impostazione frequenza di controllo del canale di comunicazione
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed è almeno configurato un canale di comunicazione (Mail, WhatsApp).

- *Postcondizioni:* la frequenza di monitoraggio dei canali di comunicazione è configurata nel sistema e applicata dallo Scheduler.\

- *Trigger:* l'amministratore ha la possibilità di impostare o modificare la frequenza di controllo di un canale specifico.

- *Scenario principale:* \
  + L'amministratore accede alla sezione di configurazione dei canali e seleziona il canale desiderato.
  + L'amministratore inserisce il valore relativo alla frequenza di controllo (intervallo di polling per il monitoraggio).
  + L'amministratore conferma il salvataggio del parametro.
  + L'applicativo verifica la validità del valore inserito e aggiorna la configurazione del canale.
  \
- *Scenari alternativi:* \
  - Valore inserito non valido: se il valore di frequenza inserito non rispetta i limiti consentiti, il sistema annulla il salvataggio e mostra un messaggio di errore. 

- *Inclusioni:* -\

- *Spiecializzazioni:* -

- *Estensioni:* UC17


=== UC11 - Modifica configurazione canale di comunicazione
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione. 
- *Postcondizioni:* i parametri aggiornati del canale (es. credenziali, host, percorso o cartella monitorata) sono presenti nel database.\

- *Trigger:* l'amministratore seleziona un canale esistente e avvia la procedura di modifica dei suoi parametri.

- *Scenario principale:* \
   + L'amministratore visualizza il dettaglio del canale e attiva la modalità di modifica.
   + L'amministratore aggiorna uno o più campi di configurazione (credenziali, cartella da modificare o frequenza).
   + L'amministratore salva le modifiche.
   + L'applicativo valida la completezza e correttezza formale dei dati inseriti e registra la nuova configurazione.

- *Scenari alternativi:* \
   - Configurazione inserita non valida: se mancano campi obbligatori o i dati non sono validi, l'applicativo blocca il salvataggio della configurazione e notifica l'errore.
   - Annullamento: l'amministratore annulla l'operazione prima di salvare, l'applicativo ripristina i valori precedenti senza apportare modifiche. 
- *Inclusioni:* UC10\

- *Estensioni:* UC17

- *Spiecializzazioni:* -

=== UC12 - Attivazione del canale di comunicazione
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione che si trova nello stato "disattivato". 
- *Postcondizioni:* lo stato del canale passa ad "attivo" e lo Scheduler avvia il monitoraggio periodico.

- *Trigger:* l'amministratore seleziona il comando di attivazione su un canale disattivo.

- *Scenario principale:* \
   + L'amministratore individua un canale disattivo nella lista dei canali configurati nell'applicativo.
   + L'amministratore seleziona l'opzione di attivazione del canale.
   + L'applicativo verifica la validità della configurazione e aggiorna lo stato del canale ad "attivo".
- *Scenari alternativi:* \
   - Configurazione incompleta: se il canale non possiede tutti i parametri validi, l'applicativo impedisce l'attivazione e mostra un errore.
- *Inclusioni:* -\

- *Spiecializzazioni:* -

- *Estensioni:* UC17

=== UC13 - Disattivazione del canale di comunicazione 
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione che attualmente è in stato "attivo". 
- *Postcondizioni:* lo stato del canale passa a "disattivo" e lo Scheduler sospende il monitoraggio periodico.

- *Trigger:* l'amministratore seleziona il comando di disattivazione su un canale attivo.

- *Scenario principale:* \
   + L'amministratore individua un canale attivo nella lista dei canali configurati nell'applicativo.
   + L'amministratore seleziona l'opzione di disattivazione del canale.
   + L'applicativo imposta lo stato su "disattivo" e interrompe la ricezione di nuove richieste da quel canale.
- *Scenari alternativi:* - \

- *Inclusioni:* -\

- *Estensioni:* -

- *Spiecializzazioni:* -

=== UC14 - Eliminazione del canale di comunicazione 
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione. 
- *Postcondizioni:* il canale di comunicazione selezionato viene rimosso definitivamente dall'applicativo.

- *Trigger:* l'amministratore seleziona l'azione di eliminazione di un canale.

- *Scenario principale:* \
   + L'amministratore seleziona il canale da eliminare.
   + L'applicativo chiede, attraverso un banner, la conferma dell'eliminazione del canale scelto.
   + L'amministratore conferma l'eliminazione del canale selezionato.
   + L'applicativo rimuove definitivamente la configurazione del canale eliminato.

- *Scenari alternativi:* \
   - Annullamento: l'amministratore rifiuta o chiude il banner di conferma; l'operazione viene interrotta.

- *Inclusioni:* -

- *Estensioni:* -
- *Spiecializzazioni:* -

=== UC15 - Connessione al canale di comunicazione 
- *Attore primario:* Amministratore \

- *Attori secondari:* Mail, WhatsApp\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed ha inserito i parametri di configurazione del canale.
- *Postcondizioni:* l'amministratore riceve riscontro immediato sull'esito della connettività verso il servizio esterno.

- *Trigger:* l'amministratore imposta "attivo" il canale e viene avviata la connessione.

- *Scenario principale:* \
   + L'amministratore attiva un canale di comunicazione configurato nell'applicativo.
   + L'applicativo tenta la connessione al canale selezionato attraverso i parametri configurati.
   + La connessione ha esito positivo e l'applicativo mostra un messaggio di successo.


- *Scenari alternativi:* \
   - Parametri non validi: se i parametri inseriti nella configurazione del canale non sono corretti, la connessione viene rifiutata.
   - Connessione non riuscita: se il servizio esterno non è raggiungibile o rifiuta i parametri inseriti, la connessione non viene stabilita.

- *Inclusioni:* -\
- *Spiecializzazioni:* -
- *Estensioni:* UC16, UC17

=== UC16 - Connessione al canale di comunicazione non riuscita
- *Attore primario:* Amministratore \

- *Attori secondari:* Mail, WhatsApp\

- *Precondizioni:* è stato avviato un tentativo di connessione e il servizio esterno ha restituito un errore.

- *Postcondizioni:* l'amministratore viene informato del fallimento della connessione attraverso un banner di errore.

- *Trigger:* rilevamento di un errore di rete o di autenticazione durante il tentativo di connessione.

- *Scenario principale:* \
   + L'applicativo intercetta l'errore restituito dal canale esterno.
   + L'applicativo registra l'esito negativo e mostra un messaggio di errore all'amministratore.

- *Scenari alternativi:* - \

- *Inclusioni:* -\

- *Estensioni:* -
- *Spiecializzazioni:* -

=== UC17 - Configurazione del canale di comunicazione non valida
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* tentativo di salvataggio di una configurazione di canale con dati mancanti o errati.

- *Postcondizioni:* la configurazione non viene salvata e vengono evidenziati gli errori riscontrati.

- *Trigger:* rilevamento di anomalie di validazione sui campi della configurazione del canale.

- *Scenario principale:* \
   + L'applicativo esegue i controlli di validazione sui parametri inseriti.
   + L'applicativo rileva i campi obbligatori vuoti o non corretti.
   + L'applicativo blocca l'operazione in corso e mostra i dettagli dell'errore all'amministratore.

- *Scenari alternativi:* -\

- *Inclusioni:* -\

- *Estensioni:* -

- *Spiecializzazioni:* -

#pagebreak()
=== UC18 - Associazione canale a tenant
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed esiste almeno un canale di comunicazione configurato e almeno un tenant registrato.

- *Postcondizioni:* il canale risulta collegato al tenant scelto, garantendo l'isolamento logico della richieste. 

- *Trigger:* l'amministratore seleziona il tenant di riferimento per un canale.

- *Scenario principale:* \
   + L'amministratore accede alla configurazione del canale.
   + L'amministratore seleziona il tenant desiderato dall'elenco disponibile.
   + L'amministratore conferma il salvataggio dell'associazione.
   + L'applicativo memorizza il legame tra canale e tenant nel database.


- *Scenari alternativi:* \
   - Nessun tenant disponibile: se non esistono tenant registrati, l'amministratore deve prima crearne uno.

- *Inclusioni:* -\

- *Estensioni:* -

- *Spiecializzazioni:* -


=== UC19 - Creazione del tenant
- *Attore primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia amministrativa.

- *Postcondizioni:* un nuovo tenant con spazio logico isolato viene registrato nel database.

- *Trigger:* l'amministratore avvia la procedura di creazione di un nuovo tenant.

- *Scenario principale:* \
   + L'amministratore accede alla sezione dei tenant e seleziona la creazione di un nuovo elemento.
   + L'amministratore inserisce il nome identificativo del tenant.
   + L'amministratore conferma la creazione del tenant.
   + L'applicativo verifica l'unicità del nome, memorizza il nuovo tenant e mostra un messaggio di successo.

- *Scenari alternativi:* \
   - Nome tenant già esistente: se il nome del tenant è già presente all'interno dell'applicativo, l'operazione viene bloccata e viene mostrato un messaggio di errore.

- *Inclusioni:* -\

- *Spiecializzazioni:* -

- *Estensioni:* UC20




=== UC21 -