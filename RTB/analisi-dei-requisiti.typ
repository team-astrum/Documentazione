#import "../Template/tmp-documentazione.typ": conf, usecase, G

#show: conf.with(
  titolo: "Analisi dei Requisiti",
  status: "Da approvare", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Filippo De Guio", "Matteo De Col", "Gianluca Bacco"),
  verifica: ("Samuele Gobbi", "Matteo De Col", "Filippo De Guio"),
  approvazione: " ",
  changelog: (
    (ver: "0.9.0", data: "2026-11-26", autore: "Thomas Morettin", ruolo: "Analista", verificatore:"", desc: "Stesura casi d'uso da UC55 a UC60 insieme a UC64, UC65 e UC66."),
    (ver: "0.8.0", data: "2026-11-26", autore: "Corrado Bacco", ruolo: "Analista", verificatore:"", desc: "Stesura Casi d'Uso da UC61 a UC63"),
    (ver: "0.7.0", data: "2026-11-26", autore: "Corrado Bacco", ruolo: "Analista", verificatore:"", desc: "Stesura Casi d'Uso da UC48 a UC54"),
    (ver: "0.6.1", data: "2026-11-26", autore: "Corrado Bacco", ruolo: "Analista", verificatore:"De Col Matteo", desc: "Correzione UC30"),
    (ver: "0.6.0", data: "2026-11-25", autore: "Gianluca Brotto", ruolo: "Analista", verificatore:"De Col Matteo", desc: "Stesura Casi d'Uso  da UC28 a UC31"),
    (ver: "0.5.2", data: "2026-11-24", autore: "Gianluca Brotto", ruolo: "Analista", verificatore:"De Col Matteo", desc: "Correzione Casi d'uso da UC20 a UC27 e modifica sezione attori"),
    (ver: "0.5.1", data: "2026-11-23", autore: "Corrado Bacco", ruolo: "Analista", verificatore:"De Col Matteo", desc: "Correzione del documento"),
    (ver: "0.5.0", data: "2026-11-22", autore: "Gianluca Brotto", ruolo: "Analista", verificatore:"De Col Matteo", desc: "Stesura Casi d'Uso da UC20 a UC27"),
    (ver: "0.4.3", data: "2026-11-21", autore: "Corrado Bacco", ruolo: "Analista", verificatore:"Filippo De Guio, Matteo De Col", desc: "Correzione del documento"),
    (ver: "0.4.2", data: "2026-11-20", autore: "Corrado Bacco", ruolo: "Analista", verificatore:"Filippo De Guio", desc: "Correzione del documento"),
    (ver: "0.4.1", data: "2026-11-20", autore: "Thomas Morettin", ruolo: "Analista", verificatore:"Filippo De Guio", desc: "Inserimento diagrammi casi d'uso UC1 - UC9"),
    (ver: "0.4.0", data: "2026-11-19", autore: "Thomas Morettin", ruolo: "Analista", verificatore:"Filippo De Guio", desc: "Stesura casi d'uso UC1 - UC9"),
    (ver: "0.3.0", data: "2026-11-19", autore: "Corrado Bacco", ruolo: "Analista", verificatore:"", desc: "Stesura Casi d'Uso da UC10 a UC19"),
    (ver: "0.2.0", data: "2026-11-18", autore: "Gianluca Brotto", ruolo: "Analista", verificatore:"Filippo De Guio", desc: "Stesura Introduzione e Attori della sezione Casi d'Uso"),
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
Il sistema AIRA (AI Requests Automation) si propone come un motore middleware multimodale guidato dall'Intelligenza Artificiale, progettato per automatizzare la ricezione, l'estrazione semantica e l'esecuzione di richieste aziendali #G("B2B (Business-to-Business)", def: "Modello commerciale e di scambio dati in cui le transazioni economiche, le comunicazioni e la condivisione di informazioni avvengono esclusivamente tra aziende o operatori commerciali, anziché tra un'azienda e il consumatore finale.") destinate ai sistemi #G("ERP (Enterprise Resource Planning)", def: "Sistema software di gestione integrata che centralizza e automatizza i principali processi operativi e amministrativi di un'azienda."), #G("CRM (Customer Relationship Management)", def: "Sistema software utilizzato per gestire le interazioni con i clienti per l'ottimizzazione dei processi aziendali."), o portali #G("B2B (Business-to-Business)").

La piattaforma acquisisce ed elabora automaticamente flussi informativi non strutturati provenienti da canali eterogenei (e-mail con allegati PDF, note vocali, messaggi testuali, filesystem ed etichette scansionate).

Attraverso una pipeline modulare basata su modelli di visione artificiale, #G("OCR (Optical Character Recognition)", def: "Tecnologia di riconoscimento ottico dei caratteri che trasforma immagini, scansioni di documenti cartacei o file PDF in testo digitale codificato."), #G("Speech-to-Text", def: "Tecnologia di conversione del parlato in testo scritto."), e modelli linguistici (#G("LLM (Large Language Model)", def: "Modello Linguistico di grandi dimensioni che può generare testo coerente e contestualmente rilevante.")), AIRA riconosce l'intenzione del messaggio ed estrae le entità rilevanti, convertendole in payload strutturati (#G("JSON (JavaScript Object Notation)") o  #G("record", def: "Singola riga di una tabella di un database relazionale che raggruppa un insieme di dati correlati relativi a una specifica entità.") di #G("database", def: "Struttura dati utilizzata per organizzare e memorizzare informazioni in modo sistematico e accessibile.")).

L'architettura garantisce sicurezza multi-tenant e include un'interfaccia di amministrazione in Angular per la gestione dei canali e il monitoraggio dei log.

L'obiettivo primario è l'abbattimento dell'operatività manuale a basso valore aggiunto, la minimizzazione dei tempi di evasione e l'azzeramento degli errori di trascrizione nei processi aziendali.

== Funzioni del prodotto 
Il sistema AIRA offre le seguenti macro-funzionalità primarie:

- Monitoraggio multi-canale: acquisizione continua delle richieste provenienti da email, servizi di messaggistica e filesystem.
- Sicurezza e isolamento dei dati: identificazione e autorizzazione dei mittenti, con protezione da accessi non autorizzati e commistione di informazioni tra clienti.
- Elaborazione multimodale: trascrizione dei messaggi vocali tramite #G("Speech-to-Text") e estrazione di informazioni da immagini e documenti tramite #G("OCR (Optical Character Recognition)") e #G("computer vision", def: "Tecnologia che consente ai sistemi di interpretare e analizzare immagini e video").
- Interpretazione semantica: analisi dei contenuti tramite #G("LLM (Large Language Model)") per individuare l'intento della richiesta e classificarla in base alla tipologia.
- Strutturazione e validazione dei dati: organizzazione delle informazioni estratte secondo modelli predefiniti e verifica della loro conformità prima dell'elaborazione.
- Integrazione con sistemi esterni: inoltro delle richieste strutturate verso sistemi #G("ERP (Enterprise Resource Planning)"), #G("CRM (Customer Relationship Management)"), portali #G("B2B (Business-to-Business)") e sistemi di ticketing tramite API REST o email.
- Persistenza e tracciabilità: memorizzazione delle richieste, dei dati estratti e delle operazioni effettuate, con relativa cronologia.
- Interfaccia amministrativa: configurazione dei canali e delle regole operative, consultazione dello storico e gestione dei dati persistiti.

== Caratteristiche dell'Utente
Gli utenti che interagiscono con il sistema AIRA si dividono nelle seguenti categorie:

- Amministratore di Sistema: Gestisce la configurazione dei canali, le regole di notifica e il monitoraggio dei log tramite l'interfaccia web.
- Operatore Aziendale / Back-Office: Consulta e valida le richieste decodificate dall'IA prima o dopo l'inoltro ai gestionali #G("ERP (Enterprise Resource Planning)") e #G("CRM (Customer Relationship Management)").
- Cliente / Mittente #G("B2B (Business-to-Business)"): Invia richieste via e-mail, messaggi vocali o immagini senza interagire direttamente con la piattaforma.

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
+ *#G("Attore", def: "Qualsiasi entità esterna al sistema che interagisce con esso per raggiungere un determinato obiettivo.") principale:* l'#G("attore") che avvia il Caso d'Uso per raggiungere un obiettivo;
+ *Attori secondari:* sistemi o servizi esterni coinvolti durante l'esecuzione del flusso;
+ *Precondizioni:* condizioni che devono risultare vere prima dell'inizio del Caso d'Uso;
+ *Postcondizioni:* condizioni che risultano vere al termine dello scenario principale, a seguito del suo completamento con successo;
+ *Trigger:* l'evento che dà inizio all'esecuzione del Caso d'Uso;
+ *Scenario principale:* sequenza di passi che descrive il caso in cui l'obiettivo dell'#G("attore") principale viene raggiunto senza deviazioni;
+ *Scenari alternativi:* deviazioni dallo scenario principale, ciascuna associata alla condizione che la determina;
+ *Inclusioni:* Casi d'Uso inclusi dal Caso d'Uso corrente (relazione «include»). Il loro comportamento viene eseguito sempre e incondizionatamente durante lo scenario del Caso d'Uso base, che non può completarsi senza di essi;
+ *Estensioni:* Casi d'Uso che estendono il Caso d'Uso corrente (relazione «extend»). Vengono eseguiti solo al verificarsi di una condizione specifica;
+ *Specializzazioni:* varianti del Caso d'Uso generale e sono tra loro mutualmente esclusive, senza imporre un percorso di esecuzione obbligatorio;

== Attori 
Gli attori rappresentano le entità esterne al sistema che interagiscono direttamente con esso.
Quelli individuati sono:

- *Mittente (#G("attore") generalizzato):* soggetto esterno che invia richieste al sistema tramite i canali previsti.
  - *Cliente censito:* mittente presente nell'anagrafica. Invia richieste (e-mail con allegati, messaggi WhatsApp testuali e vocali) che il sistema deve elaborare. Può ricevere risposte automatiche in caso di ricezione o errore nella ricezione.
  - *Mittente non censito:* mittente non presente nell'anagrafica. Le sue richieste devono essere bloccate dal Filtro Sicurezza.

- *Utente non autenticato:* soggetto che tenta di accedere all'interfaccia amministrativa prima di aver effettuato l'autenticazione.
- *Utente autenticato:* soggetto che si è autenticato al sistema. Per garantire un accesso differenziato si specializza nei seguenti profili:
  - *Amministratore di piattaforma:* utente con privilegi globali a livello di sistema (cross-tenant). Gestisce il ciclo di vita dei tenant (creazione, modifica ed eliminazione) e la configurazione globale dell'infrastruttura.
  - *Amministratore aziendale:* utente associato a uno specifico tenant. Configura i canali attivi, importa e consulta l'anagrafica dei mittenti, definisce le regole operative, consulta le richieste e lo storico dei log e gestisce la persistenza locale dei dati relativi al proprio tenant.
  - *Operatore:* utente associato a uno specifico tenant che si occupa della consultazione delle richieste e dell'eventuale validazione manuale delle stesse.
  
- *Canale e-mail:* casella di posta elettronica esterna monitorata dal sistema per l'acquisizione delle richieste (testo e allegati). Può essere utilizzata anche per l'invio delle risposte automatiche al mittente.
- *Canale WhatsApp:* servizio di messaggistica esterno, monitorato dal sistema per l'acquisizione delle richieste (testuali e vocali). Può essere utilizzato anche per l'invio delle risposte automatiche al mittente.
- *Servizio #G("LLM (Large Language Model)"):* esegue l'interpretazione semantica. Riceve il testo da interpretare e restituisce le informazioni strutturate corrispondenti (tipologia della richiesta, entità rilevate, intenzione principale)
- *Sistema gestionale di destinazione* (#G("B2B (Business-to-Business)"), #G("ERP (Enterprise Resource Planning)"), #G("CRM (Customer Relationship Management)"), ticketing): riceve i dati validati tramite #G("API REST", def: "Interfaccia di programmazione che permette a due applicazioni di comunicare tra loro tramite internet usando lo stesso protocollo del web: HTTP.").


== Lista dei Casi d'Uso

=== UC1 - Autenticazione utente
#figure(
  image("AdR-assets/uc1-uc2.svg"),
  caption: [
    Diagramma per UC1, UC1.1, UC1.2 e UC2.
  ],
)
- *#G("Attore") principale:* Utente non autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - L'interfaccia web-based di AIRA è raggiungibile e attiva.
  - L'utente dispone di un account valido e già registrato all'interno del sistema.
  - L'utente non ha attualmente una #G("sessione", def: "Intervallo di tempo in cui un utente interagisce con un sito web o un'applicazione, dall'accesso fino all'uscita o alla scadenza.") autenticata attiva.
- *Postcondizioni:*
  - L'utente è autenticato nel sistema (#G("sessione") attiva associata a un #G("token", def: "Una stringa di dati crittografata che viene rilasciata da un server dopo il login dell'utente; permette all'utente di navigare tra diverse pagine o servizi senza dover reinserire ogni volta le proprie credenziali.") valido).
  - Il sistema ha caricato i permessi necessari associati alla figura di amministratore; l'utente viene quindi reindirizzato all'interfaccia amministrativa con le proprie funzionalità attive.
- *Trigger:* L'utente non autenticato effettua l'accesso all'interfaccia web-based AIRA inserendo e-mail e password.
- *Scenario principale:*
  + Il sistema mostra all'utente la pagina di autenticazione dove è possibile inserire e-mail e password.
  + L'utente non autenticato inserisce la propria e-mail (include UC1.1).
  + L'utente non autenticato inserisce la propria password (include UC1.2) e invia il modulo di accesso.
  + Il sistema verifica che lo e-mail esista, l'account associato sia attivo e che la password corrisponda alle credenziali memorizzate.
  + Il sistema associa la #G("sessione") al ruolo di amministratore, genera il relativo #G("token") di accesso a scadenza e concede l'accesso all'interfaccia secondo i permessi previsti.
  + L'operazione appena eseguita dall'utente genera una riga inerente all'operazione di accesso andato a buon fine all'interno del file di log dedicato (non esiste salvataggio in chiaro dei campi e-mail e password).
- *Scenari alternativi:*
  - Campi obbligatori mancanti: prima dell'invio dei dati e-mail e password, se mancanti, il sistema segnala i campi mancanti all'utente non autenticato e lo invita a completarli, tornando al passo 2.
  - Credenziali errate o account non riconosciuto: il sistema non autentica l'utente ed estende UC2 (mostrando un messaggio di errore generico rispettando il principio di "secure by default & by design"); il sistema riprende dal passo 1.
  - Utente già autenticato (accesso diretto): se l'utente possiede già una #G("sessione") aperta per il ruolo di amministratore, il sistema aggira il form di accesso e mostra direttamente l'interfaccia dedicata.
- *Inclusioni:*
  - UC1.1 - Inserimento e-mail.
  - UC1.2 - Inserimento password.
- *Estensioni:*
  - UC2 - Autenticazione non riuscita.
- *Specializzazioni:* -

==== UC1.1 - Inserimento e-mail
- *#G("Attore") principale:* Utente non autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - UC1 è stato avviato.
  - Il sistema sta visualizzando la schermata di autenticazione con campo e-mail.
- *Postcondizioni:*
  - Il campo di identificazione inserito dall'utente è stato acquisito ed è pronto per essere verificato in UC1.
- *Trigger:* Il flusso di UC1 raggiunge il passo 2 e richiede all'utente non autenticato l'inserimento della propria e-mail.
- *Scenario principale:*
  + L'utente non autenticato seleziona il campo di testo per l'identificativo e digita la propria e-mail.
  + Il sistema acquisisce la stringa inserita all'interno del campo di autenticazione.
- *Scenari alternativi:*
  - Campo mancante: se l'utente non inserisce alcun carattere (o solo spazi) il dato non risulta compilato; l'anomalia viene segnalata in fase di invio di UC1 (come scenario alternativo), invitando l'utente a compilare il campo.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

==== UC1.2 - Inserimento password
- *#G("Attore") principale:* Utente non autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - UC1 è stato avviato.
  - Il sistema sta visualizzando la schermata di autenticazione con campo password.
- *Postcondizioni:*
  - La password inserita dall'utente è stata acquisita ed è pronta per essere verificata in UC1.
- *Trigger:* Il flusso di UC1 raggiunge il passo 3 e richiede all'utente non autenticato l'inserimento della propria password.
- *Scenario principale:*
  + L'utente non autenticato seleziona il campo di testo per la password e digita la propria chiave.
  + Il sistema acquisisce il valore inserito all'interno del campo password (mascherando i caratteri, rispettando il principio di "secure by default & by design").
- *Scenari alternativi:*
  - Campo mancante: se l'utente non inserisce alcun carattere (o solo spazi) il dato non risulta compilato; l'anomalia viene segnalata in fase di invio di UC1 (come scenario alternativo), invitando l'utente a compilare il campo.
  - Visualizzazione temporanea della password: durante o dopo la digitazione, l'utente attiva il comando di visualizzazione in corrispondenza del campo password; il sistema rende temporaneamente leggibili in chiaro i caratteri del campo selezionato fino a quando l'utente non disattiva l'opzione o non invia/abbandona il modulo.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC2 - Autenticazione non riuscita
- *#G("Attore") principale:* Utente non autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - UC1 è stato avviato.
  - L'utente non autenticato ha compilato e inviato i dati di accesso (UC1.1 e UC1.2).
  - Le credenziali fornite non superano la verifica del sistema (identificativo inesistente, password errata o account non abilitato).
- *Postcondizioni:*
  - L'accesso all'interfaccia amministrativa è negato e nessuna #G("sessione") o #G("token") di autenticazione viene generato.
  - L'utente non autenticato visualizza un messaggio di errore informativo e resta nella schermata di autenticazione, pronto per un nuovo tentativo tramite UC1.
- *Trigger:* Il flusso di UC1 raggiunge il passo 4 e la validazione ha esito negativo.
- *Scenario principale:*
  + Il sistema interrompe la procedura di accesso avviata in UC1, impedendo la creazione della #G("sessione") e l'emissione del #G("token") di autenticazione.
  + Il sistema predispone un messaggio di errore generico che segnala l'invalidità delle credenziali, senza specificare quale campo sia errato (rispettando il principio "secure by default & by design").
  + Il sistema mostra il messaggio di errore nell'interfaccia di autenticazione.
  + L'operazione appena eseguita dall'utente genera una riga inerente all'operazione di accesso negato del file di log dedicato (non esiste salvataggio in chiaro dei campi e-mail e password).
  + Il sistema, dopo l'accettazione dell'errore da parte dell'utente non autenticato, resetta i campi e mantiene l'#G("attore") principale nella schermata di accesso per consentire ulteriori tentativi.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC3 - Logout
- *#G("Attore") principale:* Utente autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - L'utente autenticato dispone di una #G("sessione") attiva nell'interfaccia amministrativa web-based AIRA (associata ad un #G("token") di accesso).
- *Postcondizioni:*
  - La #G("sessione") dell'utente è terminata e il relativo #G("token") di accesso è invalidato.
  - I dati di #G("sessione") locali sul client sono stati rimossi e l'utente torna nello stato di utente non autenticato.
  - L'interfaccia visualizza nuovamente la schermata di autenticazione per UC1 ed eventuali richieste successive verso risorse protette con il #G("token") precedente vengono rifiutate.
- *Trigger:* l'utente autenticato seleziona l'apposito comando di disconnessione nell'interfaccia amministrativa.
- *Scenario principale:*
  + L'utente autenticato seleziona il comando di logout dall'interfaccia amministrativa web-based AIRA.
  + Il sistema riceve la richiesta di disconnessione, termina la #G("sessione") corrente e invalida il #G("token") di autenticazione associato (lato server rispettando il principio "secure by default & by design").
  + Il sistema elimina i riferimenti alla #G("sessione") sul client e reindirizza l'utente alla pagina di autenticazione per UC1.
- *Scenari alternativi:*
  - #G("Token") o #G("sessione") già scaduti: se al momento della richiesta il #G("token") di accesso risulta già scaduto o non più valido, il sistema rimuove comunque eventuali riferimenti residui della #G("sessione") lato client e reindirizza l'utente alla pagina di autenticazione per UC1, segnalando con un errore che la #G("sessione") è già terminata.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC4 - Modifica password
#figure(
  image("AdR-assets/uc4-uc5.svg"),
  caption: [
    Diagramma per UC4, UC4.1, UC4.2 e UC5.
  ],
)
- *#G("Attore") principale:* Utente autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - L'utente autenticato ha effettuato l'accesso all'interfaccia amministrativa web-based AIRA e dispone di una #G("sessione") attiva valida.
- *Postcondizioni:*
  - La password dell'utente è stata aggiornata e memorizzata in forma protetta (mediante algoritmo di hashing con salt) in sostituzione della precedente.
  - L'utente autenticato riceve conferma dell'avvenuto aggiornamento e potrà accedere nei futuri login per UC1 utilizzando esclusivamente la nuova password.
- *Trigger:* l'utente autenticato accede alle impostazioni del proprio profilo nell'interfaccia amministrativa e richiede di modificare la propria password.
- *Scenario principale:*
  + L'utente autenticato seleziona l'opzione di modifica password dalla sezione dedicata al proprio profilo.
  + Il sistema presenta il modulo per la modifica della password richiedendo l'inserimento della password attuale e di quella nuova.
  + L'utente autenticato inserisce la vecchia password (include UC4.1).
  + L'utente autenticato inserisce la nuova password (include UC4.2) e invia la richiesta di modifica.
  + Il sistema verifica la validità della #G("sessione"), controlla che la vecchia password corrisponda a quella attualmente memorizzata per l'utente e verifica che la nuova password rispetti i criteri di validità previsti.
  + Il sistema memorizza la nuova password mediante hashing con salt sostituendo la precedente e visualizza un messaggio di conferma dell'avvenuto aggiornamento.
- *Scenari alternativi:*
  - Campi obbligatori mancanti: se uno o più campi richiesti risultano vuoti al momento dell'invio, il sistema evidenzia i campi mancanti, impedisce l'invio e invita l'utente a completarli, tornando al passo 3.
  - Annullamento dell'operazione: se l'utente annulla l'operazione o chiude il modulo prima di confermare, il sistema interrompe la procedura mantenendo invariata la password attuale.
  - Vecchia password non corretta: se la vecchia password inserita non corrisponde a quella registrata per l'account, il sistema annulla la modifica e attiva l'estensione UC5, riprendendo dal passo 2.
  - Nuova password non valida o uguale alla precedente: se la nuova password non soddisfa i requisiti minimi di sicurezza previsti oppure coincide con la vecchia password, il sistema non applica la modifica, mostra un messaggio esplicativo sui requisiti richiesti e invita l'utente a inserirne una diversa, tornando al passo 4.
  - #G("Sessione") scaduta durante la procedura: se al momento della verifica il #G("token") di #G("sessione") risulta scaduto, il sistema rifiuta l'operazione senza modificare la password e reindirizza l'utente alla pagina di autenticazione per UC1.
- *Inclusioni:*
  - UC4.1 - Inserimento vecchia password.
  - UC4.2 - Inserimento nuova password.
- *Estensioni:*
  - UC5 - Vecchia password non corretta.
- *Specializzazioni:* -

==== UC4.1 - Inserimento vecchia password
- *#G("Attore") principale:* Utente autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - UC4 è stato avviato.
  - Il sistema sta visualizzando il modulo di modifica password con il campo dedicato alla password attuale.
- *Postcondizioni:*
  - La vecchia password inserita dall'utente è stata acquisita ed è pronta per essere inviata e verificata in UC4.
- *Trigger:* il flusso di UC4 raggiunge il passo 3 e richiede all'utente autenticato l'inserimento della propria password attuale.
- *Scenario principale:*
  + L'utente autenticato seleziona il campo dedicato alla password attuale e digita la propria vecchia password.
  + Il sistema acquisisce la vecchia password inserita (mascherando i caratteri, rispettando il principio di "secure by default & by design").
- *Scenari alternativi:*
  - Campo mancante: se l'utente non inserisce alcun carattere (o solo spazi) il dato non risulta compilato; l'anomalia viene segnalata in fase di invio di UC4 (come scenario alternativo), invitando l'utente a compilare il campo.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

==== UC4.2 - Inserimento nuova password
- *#G("Attore") principale:* Utente autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - UC4 è stato avviato.
  - Il sistema sta visualizzando il modulo di modifica password con il campo dedicato alla nuova password.
- *Postcondizioni:*
  - La nuova password e la relativa conferma di cambio password sono state acquisite dal modulo ed è possibile procedere con l'invio e la validazione finale per UC4.
- *Trigger:* il flusso di UC4 raggiunge il passo 4 e richiede all'utente autenticato l'inserimento della nuova password.
- *Scenario principale:*
  + L'utente autenticato seleziona il campo dedicato alla nuova password e digita la nuova chiave desiderata.
  + L'utente autenticato seleziona il campo di "conferma nuova password" e digita nuovamente la stessa parola chiave.
  + Il sistema acquisisce entrambi i valori (mascherando i caratteri, rispettando il principio di "secure by default & by design") e verifica che coincidano.
- *Scenari alternativi:*
  - Campi mancanti: se l'utente non inserisce alcun carattere (o solo spazi) i dati risultano incompleti; l'anomalia viene segnalata in fase di invio di UC4 (come scenario alternativo), invitando l'utente a compilare i campi mancanti.
  - Password inserite non coincidenti: se il valore inserito nel campo di conferma è diverso da quello inserito nel campo della nuova password, il sistema segnala la mancata corrispondenza, impedisce il completamento della modifica e invita l'utente a correggere i campi tornando al passo 1.
  - Visualizzazione temporanea dei campi password: durante o dopo la digitazione, l'utente attiva il comando di visualizzazione in corrispondenza dei campi; il sistema rende temporaneamente leggibili in chiaro i caratteri del campo selezionato fino a quando l'utente non disattiva l'opzione o non invia/abbandona il modulo.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC5 - Vecchia password non corretta
- *#G("Attore") principale:* Utente autenticato
- *Attori secondari:* -
- *Precondizioni:*
  - UC4 è stato avviato dall'utente autenticato.
  - L'utente ha inserito la vecchia password (UC4.1) e la nuova password con conferma (UC4.2), inviando la richiesta di aggiornamento.
  - Il sistema ha verificato che la vecchia password inserita corrisponda a quella attualmente memorizzata per l'account.
- *Postcondizioni:*
  - La richiesta di modifica viene rifiutata e la password attuale dell'utente rimane invariata nel sistema.
  - L'utente autenticato visualizza il messaggio di errore relativo alla vecchia password non corretta e può effettuare un nuovo tentativo di modifica (UC4), restando nella propria #G("sessione") attiva.
- *Trigger:* il flusso di UC4 raggiunge il passo 5 e il controllo sulla corrispondenza della vecchia password ha esito negativo.
- *Scenario principale:*
  + Il sistema interrompe la procedura di aggiornamento avviata in UC4, mantenendo invariata la password attualmente salvata per l'utente.
  + Il sistema predispone un messaggio di errore chiaro che segnala l'errato inserimento della vecchia password.
  + Il sistema mostra il messaggio di errore all'interno della schermata di modifica password.
  + Il sistema svuota il campo della vecchia password (mantenendo i campi della nuova password secondo la politica di interfaccia) per consentire all'utente autenticato di correggere il dato e riprovare l'operazione (UC4).
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC6 - Visualizzazione lista canali
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa web-based AIRA con una #G("sessione") attiva e dispone dei permessi relativi al proprio ruolo.
- *Postcondizioni:*
  - L'amministratore visualizza l'elenco aggiornato di tutti i canali di ingresso configurati nel sistema, completo di tipologia, nome e stato (attivo/disattivo) per ciascun canale.
  - Lo stato dei dati e delle configurazioni nel sistema rimane invariato (operazione di sola lettura).
- *Trigger:* l'amministratore seleziona la sezione dedicata alla gestione dei canali dal menu dell'interfaccia amministrativa.
- *Scenario principale:*
  + L'amministratore seleziona la sezione di gestione dei canali nell'interfaccia amministrativa web-based AIRA.
  + Il sistema verifica la validità della #G("sessione") e i permessi del ruolo amministratore, quindi recupera l'elenco dei canali in ingresso configurati.
  + Il sistema visualizza la lista dei canali mostrando, per ciascuno di essi, la tipologia (e.g. e-mail, WhatsApp), il nome identificativo, lo stato corrente (attivo/disattivo) e il tenant associato, rendendo disponibili le azioni di consultazione e gestione previste.
- *Scenari alternativi:*
  - Nessun canale configurato (lista vuota): se nel sistema non risulta ancora configurato alcun canale in ingresso, il sistema visualizza una vista vuota con un messaggio informativo che segnala l'assenza dei canali configurati.
  - Errore nel caricamento della lista: se si verifica un errore interno durante il recupero dei canali configurati, il sistema mostra un messaggio di errore informativo all'amministratore e registra l'evento nei log di sistema.
  - #G("Sessione") scaduta o permessi insufficienti: se al momento della richiesta la #G("sessione") è scaduta o l'utente non dispone dei permessi di amministratore, il sistema nega l'accesso ai dati (reindirizzando l'utente a UC1 in caso di #G("sessione") scaduta).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC7 - Visualizzazione dettaglio canale
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa web-based AIRA con una #G("sessione") attiva e dispone dei permessi relativi al proprio ruolo.
  - L'amministratore ha accesso alla vista di gestione dei canali ed è presente almeno un canale configurato nel sistema.
- *Postcondizioni:*
  - L'amministratore visualizza tutte le informazioni e i parametri di configurazione del canale selezionato, con eventuali credenziali o #G("token") opportunamente mascherati.
  - Lo stato dei dati e delle configurazioni nel sistema rimane invariato (operazione di sola lettura).
- *Trigger:* l'amministratore seleziona un canale specifico dalla lista dei canali per aprirne la scheda di dettaglio.
- *Scenario principale:*
  + L'amministratore seleziona un canale dalla lista dei canali per aprirne la scheda di dettaglio.
  + Il sistema verifica la validità della #G("sessione"), i permessi del ruolo amministratore e recupera dal repository delle configurazioni tutti i dati del canale selezionato.
  + Il sistema visualizza le informazioni generali del canale (nome identificativo, tipologia, stato attivo/disattivo, frequenza di controllo, tenant associato, data/ora dell'ultimo controllo eseguito dallo scheduler ed esito) e i parametri specifici della relativa tipologia (e.g. per e-mail #G("host", def: "Dispositivo o un sistema connesso a una rete che invia, riceve o ospita dati e servizi, identificato in genere da un indirizzo IP."), porta e cartella monitorata; per WhatsApp il numero aziendale), mantenendo mascherate eventuali credenziali o #G("token") di accesso.
  - Il sistema rende disponibili nella schermata i comandi per le eventuali operazioni di gestione sul canale (modifica, attivazione/disattivazione, test di connessione ed eliminazione).
- *Scenari alternativi:*
  - Canale non trovato: se il canale selezionato non risulta presente nel sistema (e.g. perché eliminato in precedenza o richiamato tramite riferimento non valido), il sistema mostra un messaggio di errore informativo e consente di tornare alla lista dei canali.
  - Errore nel recupero del dettaglio: se si verifica un errore interno durante la lettura della configurazione del canale, il sistema mostra un messaggio di errore informativo all'amministratore e registra l'anomalia nei log di sistema.
  - #G("Sessione") scaduta o permessi insufficienti: se al momento della richiesta il #G("token") di #G("sessione") è scaduto o l'utente non possiede i permessi di amministratore, il sistema blocca la visualizzazione dei dati (reindirizzando a UC1 in caso di #G("sessione") scaduta).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC8 - Aggiunta canale e-mail
#figure(
  image("AdR-assets/uc8+uc17.svg"),
  caption: [
    Diagramma per UC8, UC8.1, UC8.2, UC8.3 e UC17.
  ],
)
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa web-based AIRA con una #G("sessione") attiva e dispone dei permessi relativi al proprio ruolo.
  - Il connettore per la gestione del canale e-mail è predisposto nel sistema; l'amministratore si trova nella sezione di configurazione dei canali (UC6).
- *Postcondizioni:*
  - La nuova configurazione di canale e-mail è registrata nel sistema in stato iniziale disattivo, con le relative credenziali memorizzate in forma protetta (rispettando il principio di "secure by default & by design").
  - Il nuovo canale compare nella lista dei canali, pronto per l'associazione a un tenant (UC18), l'eventuale test di connessione (UC15) e l'attivazione (UC12).
- *Trigger:* l'amministratore seleziona il comando per aggiungere una nuova configurazione di canale e-mail dall'interfaccia amministrativa.
- *Scenario principale:*
  + L'amministratore avvia la procedura di aggiunta di un nuovo canale e seleziona la tipologia e-mail.
  + Il sistema presenta il modulo di configurazione del canale e-mail richiedendo il nome identificativo, i parametri di connessione al server di posta, le credenziali della casella e la cartella da monitorare.
  + L'amministratore inserisce il nome identificativo del canale.
  + L'amministratore inserisce #G("host") e porta del server di posta (include UC8.1).
  + L'amministratore inserisce le credenziali di accesso alla casella (include UC8.2).
  + L'amministratore indica la cartella della casella da monitorare (include UC8.3, confermando eventualmente il valore predefinito e.g. _inbox_) e invia il modulo per il salvataggio.
  + Il sistema verifica la validità della #G("sessione") e i permessi del ruolo, controlla la completezza e la validità formale dei parametri inseriti, memorizza le credenziali in forma protetta e salva la nuova configurazione, in stato disattivo, del canale e-mail.
  + Il sistema mostra un messaggio di conferma dell'avvenuta aggiunta e aggiorna la lista dei canali.
- *Scenari alternativi:*
  - Annullamento dell'operazione: se l'amministratore annulla l'operazione prima dell'invio, il sistema interrompe la procedura senza salvare alcuna configurazione e torna alla vista precedente.
  - Configurazione incompleta o non valida: se mancano campi obbligatori oppure uno o più parametri risultano formalmente non validi (e.g. porta fuori intervallo o #G("host") malformato), il sistema impedisce il salvataggio e attiva UC17, permettendo all'amministratore di correggere i dati dal passo 3.
  - Canale già configurato: se il nome identificativo o la stessa casella/cartella risulta già registrata nel sistema, quest'ultimo segnala il conflitto e invita l'amministratore a modificare i parametri inseriti.
  - #G("Sessione") scaduta o permessi insufficienti: se al momento del salvataggio la #G("sessione") è scaduta o l'utente non dispone dei permessi di amministratore, il sistema nega l'operazione senza salvare dati (reindirizzando a UC1 se la #G("sessione") è scaduta).
- *Inclusioni:*
  - UC8.1 - #G("Host") e porta.
  - UC8.2 - Credenziali casella.
  - UC8.3 - Cartella da monitorare.
- *Estensioni:*
  - UC17 - Configurazione canale non valida.
- *Specializzazioni:* -

==== UC8.1 - #G("Host") e porta
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - UC8 è stato avviato.
  - Il sistema sta mostrando il modulo di configurazione del canale e-mail con i campi dedicati all'#G("host") e alla porta del server di posta.
- *Postcondizioni:*
  - L'indirizzo #G("host") e il numero di porta del server di posta sono stati acquisiti dal modulo di configurazione e sono pronti per la validazione e il salvataggio in UC8.
- *Trigger:* il flusso di UC8 raggiunge il passo 4 e richiede l'inserimento di #G("host") e porta del server di posta.
- *Scenario principale:*
  + L'amministratore inserisce l'indirizzo #G("host") del server di posta (e.g. nome di dominio o indirizzo IP del server #G("IMAP (Internet Message Access Protocol)", def: "Standard di comunicazione utilizzato per ricevere e gestire la posta elettronica; esso lascia i messaggi memorizzati sul server del provider e li sincronizza in tempo reale con tutti i dispositivi collegati (computer, smartphone, tablet e webmail).")).
  + L'amministratore inserisce il numero di porta del server di posta (confermando eventualmente la porta predefinita per connessioni cifrate, e.g. 993).
  + Il sistema acquisisce entrambi i valori nel modulo di configurazione.
- *Scenari alternativi:*
  - #G("Host") mancante o sintatticamente non valido: se il campo #G("host") viene lasciato vuoto o contiene caratteri non validi, l'anomalia viene segnalata in fase di validazione in UC8 (attivando UC17).
  - Porta mancante o fuori intervallo: se il numero di porta è vuoto, non numerico o esterno all'intervallo valido (1 - 65.535), l'anomalia viene segnalata in fase di validazione in UC8 (attivando UC17).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

==== UC8.2 - Credenziali casella
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - UC8 è stato avviato.
  - Il sistema sta mostrando il modulo di configurazione del canale e-mail con i campi dedicati alle credenziali di accesso alla casella.
- *Postcondizioni:*
  - Le credenziali di accesso alla casella e-mail sono state acquisite dal modulo di configurazione e sono pronte per la validazione e la memorizzazione protetta in UC8.
- *Trigger:* il flusso di UC8 raggiunge il passo 5 e richiede l'inserimento delle credenziali di accesso alla casella di posta.
- *Scenario principale:*
  + L'amministratore inserisce l'identificativo dell'account di posta (e.g. indirizzo e-mail o username della casella).
  + L'amministratore inserisce la password associata alla casella.
  + Il sistema acquisisce le credenziali inserite (mascherando i caratteri, rispettando il principio di "secure by default & by design").
- *Scenari alternativi:*
  - Campi obbligatori mancanti: se l'identificativo o la password della casella vengono lasciati vuoti, i dati risultano incompleti e l'anomalia viene segnalata in fase di validazione in UC8 (attivando UC17).
  - Visualizzazione temporanea della password: durante o dopo la digitazione, l'amministratore attiva l'apposito comando per mostrare la password della casella; il sistema rende temporaneamente leggibili in chiaro i caratteri fino alla disattivazione del comando o all'invio/abbandono del modulo, momento in cui ripristina il mascheramento.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

==== UC8.3 - Cartella da monitorare
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - UC8 è stato avviato.
  - Il sistema sta mostrando il modulo di configurazione del canale e-mail con il campo dedicato alla cartella della casella da monitorare.
- *Postcondizioni:*
  - Il nome o il percorso della cartella da monitorare (specificato dall'amministratore oppure mantenuto sul valore predefinito) è stato acquisito dal modulo ed è pronto per il salvataggio in UC8.
- *Trigger:* il flusso di UC8 raggiunge il passo 6 e richiede l'indicazione della cartella della casella e-mail da monitorare.
- *Scenario principale:*
  + Il sistema presenta il campo relativo alla cartella da monitorare (preimpostato sul valore predefinito _inbox_).
  + L'amministratore inserisce o modifica il nome/percorso della cartella della casella di posta da monitorare.
  + Il sistema acquisisce il valore indicato dall'amministratore.
- *Scenari alternativi:*
  - Conferma del valore predefinito: se l'amministratore lascia invariato il valore proposto, il sistema utilizza la cartella predefinita _inbox_.
  - Nome o percorso cartella non valido: se il valore inserito contiene caratteri o sintassi non ammessi, l'anomalia viene segnalata in fase di validazione in UC8 (attivando UC17).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC9 - Aggiunta canale WhatsApp
#figure(
  image("AdR-assets/uc9+uc17.svg"),
  caption: [
    Diagramma per UC9, UC9.1, UC9.2, UC9.3 e UC17.
  ],
)
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa web-based AIRA con una #G("sessione") attiva e dispone dei permessi relativi al proprio ruolo.
  - Il connettore per la gestione del servizio di messaggistica WhatsApp è predisposto nel sistema; l'amministratore si trova nella sezione di configurazione dei canali (UC6).
- *Postcondizioni:*
  - La nuova configurazione di canale WhatsApp è registrata nel sistema in stato iniziale disattivo, con le relative credenziali o il #G("token") API memorizzati in forma protetta (rispettando il principio di "secure by default & by design").
  - Il nuovo canale compare nella lista dei canali, pronto per l'associazione a un tenant (UC18), l'eventuale test di connessione (UC15) e l'attivazione (UC12).
- *Trigger:* l'amministratore seleziona il comando per aggiungere una nuova configurazione di canale WhatsApp dall'interfaccia amministrativa.
- *Scenario principale:*
  + L'amministratore avvia la procedura di aggiunta di un nuovo canale e seleziona la tipologia WhatsApp.
  + Il sistema presenta il modulo di configurazione del canale WhatsApp richiedendo il nome identificativo, le credenziali o il #G("token") di accesso API e il numero aziendale da monitorare.
  + L'amministratore inserisce il nome identificativo del canale.
  + L'amministratore inserisce le credenziali o il #G("token") di accesso al servizio di messaggistica (include UC9.1).
  + L'amministratore inserisce il numero aziendale da monitorare (include UC9.2) e invia il modulo per il salvataggio.
  + Il sistema verifica la validità della #G("sessione") e i permessi del ruolo, controlla la completezza e la validità formale dei parametri inseriti, memorizza le credenziali o #G("token") in forma protetta e salva la nuova configurazione, in stato disattivo, del canale WhatsApp.
  + Il sistema mostra un messaggio di conferma dell'avvenuta aggiunta e aggiorna la lista dei canali.
- *Scenari alternativi:*
  - Annullamento dell'operazione: se l'amministratore annulla l'operazione prima dell'invio, il sistema interrompe la procedura senza salvare alcuna configurazione e torna alla vista precedente.
  - Configurazione incompleta o non valida: se mancano campi obbligatori oppure uno o più parametri risultano formalmente non validi (e.g. formato del numero telefonico non valido o #G("token") mancante/malformato), il sistema impedisce il salvataggio e attiva UC17, permettendo all'amministratore di correggere i dati dal passo 3.
  - Canale o numero aziendale già configurato: se il nome identificativo o lo stesso numero aziendale risulta già registrato nel sistema, quest'ultimo segnala il conflitto e invita l'amministratore a modificare i parametri inseriti.
  - #G("Sessione") scaduta o permessi insufficienti: se al momento del salvataggio la #G("sessione") è scaduta o l'utente non dispone dei permessi di amministratore, il sistema nega l'operazione senza salvare dati (reindirizzando a UC1 se la #G("sessione") è scaduta).
- *Inclusioni:*
  - UC9.1 - Credenziali o #G("token") API.
  - UC9.2 - Numero aziendale.
- *Estensioni:*
  - UC17 - Configurazione canale non valida.
- *Specializzazioni:* -

==== UC9.1 - Credenziali o #G("token") API
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - UC9 è stato avviato.
  - Il sistema sta mostrando il modulo di configurazione del canale WhatsApp con i campi dedicati alle credenziali o al #G("token") API.
- *Postcondizioni:*
  - Le credenziali o il #G("token") di accesso API verso il servizio di messaggistica WhatsApp sono stati acquisiti dal modulo di configurazione e sono pronti per la validazione e la memorizzazione protetta in UC9.
- *Trigger:* il flusso di UC9 raggiunge il passo 4 e richiede l'inserimento delle credenziali o del #G("token") API per il servizio WhatsApp.
- *Scenario principale:*
  + L'amministratore inserisce il #G("token") di accesso API (o l'identificativo applicativo e relativa chiave d'accesso) previsto per il servizio di messaggistica WhatsApp.
  + Il sistema acquisisce i valori inseriti e, per impostazione predefinita, maschera a schermo (rispettando il principio di "secure by default & by design") i caratteri del #G("token") o della chiave per impedirne la lettura visiva.
- *Scenari alternativi:*
  - Campi obbligatori mancanti o formalmente non validi: se il #G("token") API o le credenziali richieste vengono lasciati vuoti oppure presentano caratteri/formato non ammessi, l'anomalia viene segnalata in fase di validazione in UC9 (attivando UC17).
  - Visualizzazione temporanea del #G("token") o chiave: durante o dopo la digitazione, l'amministratore attiva l'apposito comando per mostrare il valore inserito; il sistema rende temporaneamente leggibili in chiaro i caratteri fino alla disattivazione del comando o all'invio/abbandono del modulo, ripristinando poi il mascheramento.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

==== UC9.2 - Numero aziendale
- *#G("Attore") principale:* Amministratore
- *Attori secondari:* -
- *Precondizioni:*
  - UC9 è stato avviato.
  - Il sistema sta mostrando il modulo di configurazione del canale WhatsApp con il campo dedicato al numero di telefono aziendale da monitorare.
- *Postcondizioni:*
  - Il numero telefonico aziendale (in formato valido e normalizzato) è stato acquisito dal modulo di configurazione ed è pronto per la validazione, il controllo di unicità e il salvataggio in UC9.
- *Trigger:* il flusso di UC9 raggiunge il passo 5 e richiede l'indicazione del numero di telefono aziendale da monitorare.
- *Scenario principale:*
  + L'amministratore inserisce il numero di telefono aziendale associato al canale WhatsApp da monitorare, comprensivo di prefisso internazionale (e.g. +39 ...).
  + Il sistema acquisisce il numero inserito nel modulo di configurazione, normalizzandone eventualmente gli spazi o i caratteri separatori superflui.
- *Scenari alternativi:*
  - Numero mancante o formato non valido: se il campo è vuoto, contiene caratteri alfabetici o non rispetta il formato telefonico internazionale valido, l'anomalia viene segnalata in fase di validazione in UC9 (attivando UC17).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC10 - Impostazione frequenza di controllo del canale di comunicazione
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
  - l'amministratore è autenticato nell'interfaccia web-based ed è almeno configurato un canale di comunicazione (Mail, WhatsApp).
- *Postcondizioni:* 
  - la frequenza di monitoraggio dei canali di comunicazione è configurata nel sistema e applicata dallo Scheduler.
- *Trigger:* l'amministratore ha la possibilità di impostare o modificare la frequenza di controllo di un canale specifico.
- *Scenario principale:* 
  + L'amministratore accede alla sezione di configurazione dei canali e seleziona il canale desiderato.
  + L'amministratore inserisce il valore relativo alla frequenza di controllo (intervallo di polling per il monitoraggio).
  + L'amministratore conferma il salvataggio del parametro.
  + L'applicativo verifica la validità del valore inserito e aggiorna la configurazione del canale.
- *Scenari alternativi:* 
  - Valore inserito non valido: se il valore di frequenza inserito non rispetta i limiti consentiti, il sistema annulla il salvataggio e mostra un messaggio di errore. 
- *Inclusioni:* -
- *Specializzazioni:* -
- *Estensioni:* UC17

=== UC11 - Modifica configurazione canale di comunicazione
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
  - l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione. 
- *Postcondizioni:* 
  - i parametri aggiornati del canale (es. credenziali, #G("host"), percorso o cartella monitorata) sono presenti nel database.
- *Trigger:* l'amministratore seleziona un canale esistente e avvia la procedura di modifica dei suoi parametri.
- *Scenario principale:* 
   + L'amministratore visualizza il dettaglio del canale e attiva la modalità di modifica.
   + L'amministratore aggiorna uno o più campi di configurazione (credenziali, cartella da modificare o frequenza).
   + L'amministratore salva le modifiche.
   + L'applicativo valida la completezza e correttezza formale dei dati inseriti e registra la nuova configurazione.
- *Scenari alternativi:* 
   - Configurazione inserita non valida: se mancano campi obbligatori o i dati non sono validi, l'applicativo blocca il salvataggio della configurazione e notifica l'errore.
   - Annullamento: l'amministratore annulla l'operazione prima di salvare, l'applicativo ripristina i valori precedenti senza apportare modifiche. 
- *Inclusioni:* UC10
- *Estensioni:* UC17
- *Specializzazioni:* -

=== UC12 - Attivazione del canale di comunicazione
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
 - l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione che si trova nello stato "disattivato". 
- *Postcondizioni:* 
 - lo stato del canale passa ad "attivo" e lo Scheduler avvia il monitoraggio periodico.
- *Trigger:* l'amministratore seleziona il comando di attivazione su un canale disattivo.
- *Scenario principale:* 
   + L'amministratore individua un canale disattivo nella lista dei canali configurati nell'applicativo.
   + L'amministratore seleziona l'opzione di attivazione del canale.
   + L'applicativo verifica la validità della configurazione e aggiorna lo stato del canale ad "attivo".
- *Scenari alternativi:* 
   - Configurazione incompleta: se il canale non possiede tutti i parametri validi, l'applicativo impedisce l'attivazione e mostra un errore.
- *Inclusioni:* -
- *Specializzazioni:* -
- *Estensioni:* UC17

=== UC13 - Disattivazione del canale di comunicazione 
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
 - l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione che attualmente è in stato "attivo". 
- *Postcondizioni:* 
 - lo stato del canale passa a "disattivo" e lo Scheduler sospende il monitoraggio periodico.
- *Trigger:* l'amministratore seleziona il comando di disattivazione su un canale attivo.
- *Scenario principale:* 
   + L'amministratore individua un canale attivo nella lista dei canali configurati nell'applicativo.
   + L'amministratore seleziona l'opzione di disattivazione del canale.
   + L'applicativo imposta lo stato su "disattivo" e interrompe la ricezione di nuove richieste da quel canale.
- *Scenari alternativi:* - 
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC14 - Eliminazione del canale di comunicazione 
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
  - l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione. 
- *Postcondizioni:* 
  - il canale di comunicazione selezionato viene rimosso definitivamente dall'applicativo.
- *Trigger:* l'amministratore seleziona l'azione di eliminazione di un canale.
- *Scenario principale:* 
   + L'amministratore seleziona il canale da eliminare.
   + L'applicativo chiede, attraverso un banner, la conferma dell'eliminazione del canale scelto.
   + L'amministratore conferma l'eliminazione del canale selezionato.
   + L'applicativo rimuove definitivamente la configurazione del canale eliminato.
- *Scenari alternativi:* 
   - Annullamento: l'amministratore rifiuta o chiude il banner di conferma; l'operazione viene interrotta.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC15 - Connessione al canale di comunicazione 
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* Mail, WhatsApp
- *Precondizioni:* 
  - l'amministratore è autenticato nell'interfaccia web-based ed ha inserito i parametri di configurazione del canale.
- *Postcondizioni:* 
  - l'amministratore riceve riscontro immediato sull'esito della connettività verso il servizio esterno.
- *Trigger:* l'amministratore imposta "attivo" il canale e viene avviata la connessione.
- *Scenario principale:* 
   + L'amministratore attiva un canale di comunicazione configurato nell'applicativo.
   + L'applicativo tenta la connessione al canale selezionato attraverso i parametri configurati.
   + La connessione ha esito positivo e l'applicativo mostra un messaggio di successo.
- *Scenari alternativi:* 
   - Parametri non validi: se i parametri inseriti nella configurazione del canale non sono corretti, la connessione viene rifiutata.
   - Connessione non riuscita: se il servizio esterno non è raggiungibile o rifiuta i parametri inseriti, la connessione non viene stabilita.
- *Inclusioni:* -
- *Specializzazioni:* -
- *Estensioni:* UC16, UC17

=== UC16 - Connessione al canale di comunicazione non riuscita
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* Mail, WhatsApp
- *Precondizioni:* 
  - è stato avviato un tentativo di connessione e il servizio esterno ha restituito un errore.
- *Postcondizioni:* 
  - l'amministratore viene informato del fallimento della connessione attraverso un banner di errore.
- *Trigger:* rilevamento di un errore di rete o di autenticazione durante il tentativo di connessione.
- *Scenario principale:* 
   + L'applicativo intercetta l'errore restituito dal canale esterno.
   + L'applicativo registra l'esito negativo e mostra un messaggio di errore all'amministratore.
- *Scenari alternativi:* - 
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC17 - Configurazione del canale di comunicazione non valida
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
  - tentativo di salvataggio di una configurazione di canale con dati mancanti o errati.
- *Postcondizioni:* 
  - la configurazione non viene salvata e vengono evidenziati gli errori riscontrati.
- *Trigger:* rilevamento di anomalie di validazione sui campi della configurazione del canale.
- *Scenario principale:* 
   + L'applicativo esegue i controlli di validazione sui parametri inseriti.
   + L'applicativo rileva i campi obbligatori vuoti o non corretti.
   + L'applicativo blocca l'operazione in corso e mostra i dettagli dell'errore all'amministratore.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC18 - Associazione canale a tenant
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
  - l'amministratore è autenticato nell'interfaccia web-based ed esiste almeno un canale di comunicazione configurato e almeno un tenant registrato.
- *Postcondizioni:* 
  - il canale risulta collegato al tenant scelto, garantendo l'isolamento logico delle richieste. 
- *Trigger:* l'amministratore seleziona il tenant di riferimento per un canale.
- *Scenario principale:* 
   + L'amministratore accede alla configurazione del canale.
   + L'amministratore seleziona il tenant desiderato dall'elenco disponibile.
   + L'amministratore conferma il salvataggio dell'associazione.
   + L'applicativo memorizza il legame tra canale e tenant nel database.
- *Scenari alternativi:* 
   - Nessun tenant disponibile: se non esistono tenant registrati, l'amministratore deve prima crearne uno.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC19 - Creazione del tenant
- *#G("Attore") principale:* Amministratore 
- *Attori secondari:* -
- *Precondizioni:* 
  - l'amministratore è autenticato nell'interfaccia amministrativa.
- *Postcondizioni:* 
  - un nuovo tenant con spazio logico isolato viene registrato nel database.
- *Trigger:* l'amministratore avvia la procedura di creazione di un nuovo tenant.
- *Scenario principale:* 
   + L'amministratore accede alla sezione dei tenant e seleziona la creazione di un nuovo elemento.
   + L'amministratore inserisce il nome identificativo del tenant.
   + L'amministratore conferma la creazione del tenant.
   + L'applicativo verifica l'unicità del nome, memorizza il nuovo tenant e mostra un messaggio di successo.
- *Scenari alternativi:* 
   - Nome tenant già esistente: se il nome del tenant è già presente all'interno dell'applicativo, l'operazione viene bloccata e viene mostrato un messaggio di errore.
- *Inclusioni:* -
- *Specializzazioni:* -
- *Estensioni:* UC21

=== UC20 - Modifica tenant
- *#G("Attore") principale:* Amministratore di piattaforma
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
  - È registrato almeno un tenant e l'amministratore ha accesso alla lista dei tenant (UC22).
- *Postcondizioni:*
  - Il nome identificativo del tenant è aggiornato.
- *Trigger:* l'amministratore seleziona un tenant dalla lista e avvia la procedura di modifica.
- *Scenario principale:*
  + L'amministratore seleziona un tenant dalla lista (UC22) e attiva la modalità di modifica.
  + Il sistema presenta il modulo di modifica con il nome identificativo attuale.
  + L'amministratore modifica il nome identificativo e conferma le modifiche.
  + Il sistema controlla che il nome non sia vuoto e non sia già utilizzato da un altro tenant, quindi salva la modifica.
- *Scenari alternativi:*
  - Annullamento dell'operazione: se l'amministratore annulla prima di confermare, il sistema mantiene invariato il nome attuale.
  - Nome mancante: se il campo è vuoto, il sistema impedisce il salvataggio, segnala il campo e invita l'amministratore a correggerlo.
  - Nome già utilizzato: se il nome coincide con quello di un altro tenant, il sistema non applica la modifica (estende UC21).
- *Inclusioni:* -
- *Estensioni:*
  - UC21 - Nome tenant già utilizzato.
- *Specializzazioni:* -

=== UC21 - Nome tenant già utilizzato
- *#G("Attore") principale:* Amministratore di piattaforma
- *Attori secondari:* -
- *Precondizioni:*
  - UC19 o UC20 è stato avviato.
  - L'amministratore ha inserito un nome identificativo e ha confermato l'operazione.
  - Il nome che è stato inserito coincide con quello di un tenant già registrato.
- *Postcondizioni:*
  - L'operazione di creazione o modifica del tenant non viene eseguita e l'amministratore viene invitato a inserire un nome diverso.
- *Trigger:* la verifica di unicità del nome del tenant, eseguita in UC19 o UC20, ha esito negativo.
- *Scenario principale:*
  + Il sistema interrompe l'operazione in corso, senza salvare alcuna modifica.
  + Il sistema mostra un messaggio che segnala che il nome inserito è già utilizzato e invita l'amministratore a inserirne uno diverso.
  + Il sistema mantiene il valore inserito, consentendo all'amministratore di correggerlo.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC22 - Visualizzazione lista tenant
- *#G("Attore") principale:* Amministratore di piattaforma
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
- *Postcondizioni:*
  - L'amministratore visualizza l'elenco aggiornato dei tenant registrati, con nome identificativo e numero di canali associati.
- *Trigger:* l'amministratore seleziona la voce visualizzazione dei tenant dal menu dell'interfaccia amministrativa.
- *Scenario principale:*
  + Il sistema visualizza la lista mostrando, per ciascun tenant, il nome identificativo e il numero di canali associati.
- *Scenari alternativi:*
  - Nessun tenant registrato (lista vuota): il sistema visualizza una vista vuota con un messaggio informativo.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC23 - Eliminazione tenant
- *#G("Attore") principale:* Amministratore di piattaforma
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
  - È registrato almeno un tenant e l'amministratore ha accesso alla lista dei tenant (UC22).
- *Postcondizioni:*
  - Il tenant selezionato viene rimosso dal sistema.
- *Trigger:* l'amministratore seleziona l'azione di eliminazione di un tenant.
- *Scenario principale:*
  + L'amministratore seleziona il tenant da eliminare.
  + Il sistema verifica che al tenant non sia associato alcun canale.
  + Il sistema chiede la conferma dell'eliminazione del tenant scelto.
  + L'amministratore conferma l'eliminazione.
  + Il sistema rimuove il tenant e aggiorna la lista dei tenant.
- *Scenari alternativi:*
  - Annullamento: se l'amministratore non conferma l'eliminazione, l'operazione viene interrotta e il tenant non viene eliminato.
  - Tenant con canali associati: se al tenant è associato almeno un canale, il sistema non procede con l'eliminazione e attiva UC24.
- *Inclusioni:* -
- *Estensioni:*
  - UC24 - Eliminazione tenant non consentita.
- *Specializzazioni:* -

=== UC24 - Eliminazione tenant non consentita
- *#G("Attore") principale:* Amministratore di piattaforma
- *Attori secondari:* -
- *Precondizioni:*
  - UC23 è stato avviato e l'amministratore ha selezionato un tenant da eliminare.
  - Al tenant è associato almeno un canale.
- *Postcondizioni:*
  - Il tenant non viene eliminato.
- *Trigger:* la verifica dei canali associati, eseguita in UC23, ha esito negativo.
- *Scenario principale:*
  + Il sistema interrompe l'operazione di eliminazione avviata in UC23.
  + Il sistema mostra un messaggio che segnala che il tenant non può essere eliminato.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC25 - Importazione batch dell'anagrafica mittenti
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
  - L'amministratore dispone di un file dell'anagrafica mittenti, esportato dal gestionale esterno.
- *Postcondizioni:*
  - L'anagrafica del tenant contiene esclusivamente i mittenti presenti nel file importato (creandola se assente o sostituendo integralmente quella precedente).
  - L'operazione viene registrata nei log.
- *Trigger:* l'amministratore seleziona il comando di importazione dell'anagrafica mittenti.
- *Scenario principale:*
  + L'amministratore seleziona il file dell'anagrafica da importare.
  + Il sistema verifica la validità del formato del file e la conformità dei dati di ogni mittente.
  + Il sistema salva i mittenti presenti nel file come anagrafica del tenant.
  + l'operazione viene registrata nei log.
- *Scenari alternativi:*
  - Anagrafica già presente: se per il tenant esiste già un'anagrafica, il sistema chiede conferma della sovrascrittura integrale; se l'amministratore conferma, il file viene sovrascritto, altrimenti l'operazione viene annullata mantenendo invariata l'anagrafica esistente.
  - Annullamento dell'operazione: se l'amministratore annulla l'importazione, il sistema non importa alcun dato, e se presente mantiene l'anagrafica esistente .
  - File o dati non validi: se il file non rispetta il formato previsto o contiene record non conformi, il sistema non importa il nuovo file e attiva UC26.
- *Inclusioni:*
  - UC25.1 - Selezione file anagrafica.
- *Estensioni:*
  - UC26 - Importazione anagrafica non riuscita.
- *Specializzazioni:* -

==== UC25.1 - Selezione file anagrafica
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - UC25 è stato avviato.
  - Il sistema mostra il modulo di importazione con il campo dedicato alla selezione del file.
- *Postcondizioni:*
  - Il file dell'anagrafica è stato acquisito dal modulo ed è pronto per la validazione e l'importazione in UC25.
- *Trigger:* il flusso di UC25 richiede la selezione del file da importare.
- *Scenario principale:*
  + L'amministratore seleziona dal proprio dispositivo il file dell'anagrafica esportato dal gestionale esterno.
  + Il sistema acquisisce il file selezionato.
- *Scenari alternativi:*
  - Formato non supportato: se il file selezionato non è in un formato valido, questo viene segnalato in fase di validazione in UC25.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC26 - Importazione anagrafica non riuscita
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - UC25 è stato avviato e l'amministratore ha confermato l'avvio dell'importazione.
  - Il file non supera la validazione del sistema (formato non conforme, dati obbligatori mancanti quali denominazione o assenza di almeno un recapito tra e-mail e WhatsApp, indirizzi e-mail o numeri WhatsApp in formato non valido, identificativi duplicati all'interno del file).
- *Postcondizioni:*
  - Il file non viene importato e l'eventuale anagrafica esistente resta invariata.  
  - L'amministratore visualizza l'elenco dei problemi riscontrati, con indicazione del tipo di errore e della posizione nel file.
  - L'evento è registrato nei log.
- *Trigger:* il flusso di UC25 raggiunge il passo 2 e la validazione del file ha esito negativo.
- *Scenario principale:*
  + Il sistema interrompe la procedura di importazione avviata in UC25 e scarta l'intero contenuto del file, senza modificare l'anagrafica.
  + Il sistema predispone il riepilogo degli errori riscontrati, indicando per ciascuno il tipo e la posizione nel file.
  + Il sistema mostra il riepilogo all'amministratore nell'interfaccia di importazione.
  + Il sistema registra l'evento nei log.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC27 - Visualizzazione lista anagrafica mittenti
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
- *Postcondizioni:*
  - L'amministratore visualizza l'elenco dei mittenti censiti nell'anagrafica del tenant, con denominazione cliente e i relativi recapiti registrati (indirizzi e-mail e/o numeri WhatsApp).
- *Trigger:* l'amministratore seleziona la sezione dell'anagrafica mittenti.
- *Scenario principale:*
  + Il sistema visualizza la lista mostrando, per ciascun mittente, la denominazione, gli indirizzi e-mail e i numeri WhatsApp registrati.
- *Scenari alternativi:*
  - Mancanza di anagrafica: se non è ancora stata importata alcuna anagrafica, il sistema visualizza una vista vuota con un messaggio informativo che invita a importarla (UC25).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC28 - Aggiunta mittente in anagrafica
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
  - L'amministratore ha accesso alla sezione dell'anagrafica mittenti (UC27).
- *Postcondizioni:*
  - Il nuovo mittente è registrato nell'anagrafica del tenant con almeno un recapito valido (e-mail e/o WhatsApp) ed è riconosciuto dal Filtro Sicurezza come cliente censito.
  - L'operazione viene registrata nei log.
- *Trigger:* l'amministratore seleziona il comando per registrare un nuovo mittente nell'anagrafica del tenant.
- *Scenario principale:*
  + L'amministratore avvia la procedura di registrazione di un nuovo mittente.
  + Il sistema presenta il modulo di inserimento dei dati del mittente.
  + L'amministratore inserisce la denominazione del cliente (include UC28.1).
  + L'amministratore inserisce uno o più recapiti del mittente (include UC28.2) e conferma il salvataggio.
  + Il sistema verifica la presenza della denominazione, la validità formale dei recapiti inseriti e l'assenza di identificativi già associati ad altri mittenti del tenant.
  + Il sistema salva il nuovo mittente nell'anagrafica del tenant e registra l'operazione nei log.
- *Scenari alternativi:*
  - Annullamento dell'operazione: se l'amministratore annulla prima di confermare, il sistema interrompe la procedura senza registrare alcun mittente.
  - Dati mancanti o formato non valido: se la denominazione è vuota, non è stato inserito alcun recapito oppure uno o più recapiti hanno formato non valido, il sistema impedisce il salvataggio, evidenzia i campi non conformi e invita l'amministratore a correggerli.
  - Identificativo mittente già registrato: se almeno un recapito inserito è già associato a un altro mittente del tenant, il sistema non salva il mittente e attiva UC29.
- *Inclusioni:*
  - UC28.1 - Inserimento denominazione cliente.
  - UC28.2 - Inserimento recapiti mittente.
- *Estensioni:*
  - UC29 - Identificativo mittente già registrato.
- *Specializzazioni:* -

==== UC28.1 - Inserimento denominazione cliente
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - UC28 è stato avviato.
  - Il sistema mostra il modulo di registrazione del mittente con il campo dedicato alla denominazione cliente.
- *Postcondizioni:*
  - La denominazione del cliente è stata inserita nel modulo.
- *Trigger:* il flusso di UC28 raggiunge il passo 3 e richiede l'inserimento della denominazione del cliente.
- *Scenario principale:*
  + L'amministratore seleziona il campo dedicato alla denominazione e inserisce la ragione sociale o il nominativo del cliente.
  + Il sistema acquisisce il valore inserito.
- *Scenari alternativi:*
  - Campo mancante: se il campo viene lasciato vuoto, questo viene segnalato in fase di validazione in UC28.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

==== UC28.2 - Inserimento recapiti mittente
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - UC28 è stato avviato.
  - Il sistema mostra il modulo di registrazione del mittente con i campi dedicati agli indirizzi e-mail e ai numeri WhatsApp.
- *Postcondizioni:*
  - Almeno un recapito del mittente è stato acquisito dal modulo ed è pronto per la validazione e il controllo di unicità in UC28.
- *Trigger:* il flusso di UC28 raggiunge il passo 4 e richiede l'inserimento dei recapiti associati al mittente.
- *Scenario principale:*
  + L'amministratore inserisce uno o più recapiti associati al mittente.
  + Il sistema acquisisce i recapiti inseriti nel modulo di registrazione.
- *Scenari alternativi:*
  - Nessun recapito inserito: se l'amministratore non inserisce né un indirizzo e-mail né un numero WhatsApp, questo viene segnalato in fase di validazione in UC28.
  - Formato non valido o recapiti duplicati nel modulo: se uno o più indirizzi e-mail o numeri WhatsApp non rispettano il formato previsto oppure risultano ripetuti nel modulo, questo viene segnalato in fase di validazione in UC28.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC29 - Identificativo mittente già registrato
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - UC28 o UC30 è stato avviato.
  - L'amministratore ha inserito uno o più recapiti (indirizzi e-mail o numeri WhatsApp) e ha confermato l'operazione.
  - Almeno uno dei recapiti inseriti risulta già associato a un altro mittente presente nell'anagrafica del tenant.
- *Postcondizioni:*
  - L'operazione di registrazione o modifica del mittente non viene eseguita e l'anagrafica del tenant resta invariata.
  - L'amministratore visualizza quali recapiti risultano già registrati e può correggere i dati inseriti.
- *Trigger:* la verifica di unicità dei recapiti del mittente, eseguita in UC28 o UC30, ha esito negativo.
- *Scenario principale:*
  + Il sistema interrompe l'operazione di registrazione o modifica in corso, senza salvare alcuna variazione.
  + Il sistema mostra un messaggio di errore che evidenzia gli indirizzi e-mail o i numeri WhatsApp già associati a un altro mittente nell'anagrafica del tenant.
  + Il sistema mantiene i valori compilati nel modulo, consentendo all'amministratore di correggerli e riprovare.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC30 - Modifica dati mittente
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
  - È presente almeno un mittente registrato nell'anagrafica del tenant.
- *Postcondizioni:*
  - I dati del mittente selezionato (denominazione cliente e/o recapiti registrati) sono aggiornati nell'anagrafica del tenant.
  - L'operazione viene registrata nei log.
- *Trigger:* l'amministratore seleziona un mittente dalla lista dell'anagrafica e avvia la procedura di modifica.
- *Scenario principale:*
  + L'amministratore seleziona un mittente dalla lista e attiva la modalità di modifica.
  + Il sistema presenta il modulo precompilato con la denominazione e i recapiti (indirizzi e-mail e/o numeri WhatsApp) attualmente associati al mittente.
  + L'amministratore modifica uno o più campi e conferma le modifiche.
  + Il sistema verifica la presenza della denominazione, la presenza di almeno un recapito valido e l'assenza di recapiti già associati a un altro mittente del tenant.
  + Il sistema salva le modifiche nell'anagrafica del tenant e registra l'operazione nei log.
- *Scenari alternativi:*
  - Annullamento dell'operazione: se l'amministratore annulla prima di confermare, il sistema mantiene invariati i dati attuali del mittente.
  - Dati mancanti o formato non valido: se vengono rimossi tutti i recapiti, la denominazione oppure uno o più recapiti hanno formato non valido, il sistema impedisce il salvataggio, segnala gli errori e invita l'amministratore a correggerli.
  - Identificativo mittente già registrato: se un recapito aggiunto o modificato coincide con quello già assegnato a un altro mittente del tenant, il sistema non applica le modifiche e attiva UC29.
- *Inclusioni:* -
- *Estensioni:*
  - UC29 - Identificativo mittente già registrato.
- *Specializzazioni:* -

=== UC31 - Eliminazione mittente
- *#G("Attore") principale:* Amministratore aziendale
- *Attori secondari:* -
- *Precondizioni:*
  - L'amministratore è autenticato nell'interfaccia amministrativa.
  - È presente almeno un mittente registrato nell'anagrafica del tenant.
- *Postcondizioni:*
  - Il mittente selezionato è rimosso dall'anagrafica del tenant.
  - L'operazione viene registrata nei log.
- *Trigger:* l'amministratore seleziona l'azione di eliminazione su un mittente presente nella lista dell'anagrafica.
- *Scenario principale:*
  + L'amministratore seleziona il mittente da eliminare dalla lista e seleziona il comando di eliminazione.
  + Il sistema chiede conferma dell'eliminazione del mittente selezionato.
  + L'amministratore conferma l'eliminazione.
  + Il sistema rimuove il mittente dall'anagrafica del tenant e registra l'operazione nei log.
- *Scenari alternativi:*
  - Annullamento: se l'amministratore non conferma l'eliminazione, l'operazione viene interrotta.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC48 - Invio richiesta via mail
- *#G("Attore") principale:* Mittente
- *Attori secondari:* Canale Mail
- *Precondizioni:*
  - Esiste almeno un canale mail configurato e attivo nell'applicativo.
  - Il mittente dispone di un indirizzo di posta elettronica.
- *Postcondizioni:*
  - Il messaggio di posta elettronica (con eventuale corpo testuale e/o allegati) è recapitato sulla casella monitorata e risulta pronto per essere rilevato e acquisito dall'applicativo.
- *Trigger:* il mittente ha necessità di inoltrare una richiesta aziendale (es. ordine, ticket di assistenza, appuntamento, documento contabile) tramite posta elettronica.
- *Scenario principale:*
  + Il mittente redige un nuovo messaggio mail indirizzato alla casella aziendale configurata nell'applicativo.
  + Il mittente inserisce il testo della richiesta nel corpo della mail.
  + Il mittente allega eventuali file di supporto alla richiesta, come documenti PDF o immagini.
  + Il mittente invia la mail tramite il proprio client/server di posta.
  + Il canale mail riceve e rende disponibile il messaggio.
- *Scenari alternativi:*
  - E-mail con soli allegati: Il mittente lascia vuoto il corpo del messaggio e invia esclusivamente uno o più allegati (UC48.2).
  - E-mail senza allegati: Il mittente invia esclusivamente il testo del messaggio (UC48.1) senza allegare file.
- *Inclusioni:* UC48.1
- *Estensioni:* UC48.2
- *Specializzazioni:* -

=== UC48.1 - Invio richiesta testuale via mail
- *#G("Attore") principale:* Mittente
- *Attori secondari:* Canale Mail
- *Precondizioni:*
  - Esiste almeno un canale mail configurato e attivo nell'applicativo. 
  - Il mittente dispone di un indirizzo mail e sta componendo un messaggio verso la casella monitorata.
- *Postcondizioni:*
  - Il corpo testuale della richiesta è recapitato sulla casella mail monitorata, pronto per essere rilevato e acquisito dall'applicativo.
- *Trigger:* il mittente redige il testo della richiesta nel corpo della mail prima dell'invio.
- *Scenario principale:*
  + Il mittente apre il proprio client di posta elettronica e seleziona l'indirizzo della casella mail aziendale configurata.
  + Il mittente inserisce l'oggetto e il corpo testuale contenente i dettagli della richiesta (es. ordine, ticket di assistenza, appuntamento, documento contabile).
  + Il mittente invia la mail.
  + Il canale mail riceve il messaggio e lo rende disponibile nell'applicativo.
- *Scenari alternativi:* 
  - Corpo testuale vuoto: Il mittente omette il testo nel corpo del messaggio e procede all'invio con uno o più allegati (UC48.2).
- *Inclusioni:* -
- *Estensioni:* UC48.2
- *Specializzazioni:* -

=== UC48.2 - Invio allegati alla richiesta via mail
- *#G("Attore") principale:* Mittente
- *Attori secondari:* Canale Mail
- *Precondizioni:*
  - Esiste almeno un canale e-mail configurato e attivo nel sistema.
  - Il mittente ha predisposto uno o più file da allegare alla mail (es. PDF, immagini, documenti).
- *Postcondizioni:*
  - I file allegati sono recapitatati insieme al messaggio mail sulla casella monitorata, pronti per l'acquisizione e l'estrazione da parte dell'applicativo.
- *Trigger:* il mittente associa uno o più file allegati alla mail di richiesta prima dell'invio.
- *Scenario principale:*
  + Durante la composizione della mail verso la casella monitorata, il mittente seleziona uno o più file dal proprio dispositivo e li allega al messaggio.
  + Il mittente invia la mail (con o senza testo nel corpo del messaggio).
  + Il canale mail riceve il messaggio completo di allegati e lo rende disponibile nell'applicativo.
- *Scenari alternativi:* 
  - Nessun allegato presente: Il mittente invia la mail contenente esclusivamente il testo (UC48.1).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC49 - Invio richiesta via WhatsApp
- *#G("Attore") principale:* Mittente
- *Attori secondari:* Canale WhatsApp
- *Precondizioni:*
  - Esiste almeno un canale WhatsApp configurato e attivo con un numero aziendale monitorato.
- *Postcondizioni:*
  - Il messaggio WhatsApp (testuale o nota vocale) è ricevuto dal servizio di messaggistica aziendale ed è pronto per l'acquisizione da parte dell'applicativo.
- *Trigger:* il mittente avvia o prosegue una conversazione verso il numero WhatsApp aziendale per inoltrare una richiesta.
- *Scenario principale:*
  + Il mittente apre l'applicazione di messaggistica verso il numero aziendale configurato.
  + Il mittente compone e invia un messaggio testuale (UC49.1) oppure registra e invia una nota vocale (UC49.2) contenente i dettagli della richiesta.
  + Il canale WhatsApp inoltra il messaggio all'applicativo tramite API.
- *Scenari alternativi:* 
  - Invio di allegati: il mittente invia un allegato nella chat (UC49.3)
- *Inclusioni:* UC49.1, UC49.2, UC49.3
- *Estensioni:* -
- *Specializzazioni:* -

=== UC49.1 - Invio richiesta testuale via WhatsApp
- *#G("Attore") principale:* Mittente
- *Attori secondari:* Canale WhatsApp
- *Precondizioni:*
  - Esiste almeno un canale WhatsApp configurato e attivo con un numero aziendale monitorato.
  - Il mittente dispone di un account WhatsApp attivo.
- *Postcondizioni:*
  - Il messaggio testuale è recapitato al servizio di messaggistica aziendale ed è inoltrato all'applicativo per l'acquisizione.
- *Trigger:* il mittente digita e invia un messaggio di testo verso il numero WhatsApp aziendale.
- *Scenario principale:*
  + Il mittente apre la chat associata al numero WhatsApp aziendale configurato.
  + Il mittente digita il testo della richiesta (es. descrizione di un problema, richiesta di ordine) e preme il comando di invio.
  + Il canale WhatsApp riceve il messaggio e lo notifica/inoltra all'applicativo.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC49.2 - Invio richiesta vocale via WhatsApp
- *#G("Attore") principale:* Mittente
- *Attori secondari:* Canale WhatsApp
- *Precondizioni:*
  - Esiste almeno un canale WhatsApp configurato e attivo con un numero aziendale monitorato.
  - Il mittente dispone di un account WhatsApp e di un microfono abilitato.
- *Postcondizioni:*
  - La nota vocale è recapitatata al canale WhatsApp e resa disponibile al sistema per l'acquisizione e la trascrizione.
- *Trigger:* il mittente registra e invia una nota vocale verso il numero WhatsApp aziendale.
- *Scenario principale:*
  + Il mittente apre la chat associata al numero WhatsApp aziendale configurato.
  + Il mittente registra vocalmente la propria richiesta tramite la funzione di nota vocale e la invia.
  + Il canale WhatsApp riceve il file audio della nota vocale e lo inoltra al sistema.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC49.3 - Invio allegati alla richiesta via WhatsApp
- *#G("Attore") principale:* Mittente
- *Attori secondari:* Canale WhatsApp
- *Precondizioni:*
  - Esiste almeno un canale WhatsApp configurato e attivo con un numero aziendale monitorato.
  - Il mittente dispone di un account WhatsApp e ha selezionato o acquisito un file multimediale/allegato da inviare nella chat.
- *Postcondizioni:*
  - L'allegato viene recapitato al canale WhatsApp ed è gestito in base al perimetro di rilascio definito.
- *Trigger:* il mittente seleziona e invia un allegato nella chat WhatsApp associata al numero aziendale.
- *Scenario principale:*
  + Il mittente apre la chat associata al numero WhatsApp aziendale configurato
  + Il mittente allega il file multimediale/immagine e invia il messaggio.
  + Il canale WhatsApp riceve l'allegato e lo notifica/inoltra all'applicativo.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -


=== UC52 - Acquisizione del mittente
- *#G("Attore") principale:* Applicativo - AIRA
- *Attori secondari:* Canale Mail, Canale WhatsApp
- *Precondizioni:*
  - L'applicativo ha rilevato una nuova richiesta in ingresso su un canale attivo e la richiesta non è già stata acquisita in precedenza.
- *Postcondizioni:*
  - Il mittente è estratto e associato alla corrispondente anagrafica cliente e al relativo tenant. 
  - La richiesta prosegue l'elaborazione isolata nel contesto del tenant identificato.
- *Trigger:* rilevamento di una nuova richiesta non duplicata nella pipeline di elaborazione.
- *Scenario principale:*
  + L'applicativo estrae dai metadati della richiesta l'identificativo del mittente (indirizzo mail o numero di telefono WhatsApp).
  + L'applicativo ricerca l'identificativo estratto nell'anagrafica clienti interna.
  + L'applicativo individua l'anagrafica corrispondente e recupera il tenant di appartenenza del cliente.
  + L'applicativo associa la richiesta all'anagrafica e al tenant identificati, garantendo l'isolamento logico dei dati per le fasi successive.
- *Scenari alternativi:* 
  - Mittente non riconosciuto o non autorizzato: se l'indirizzo mail o il numero WhatsApp non corrisponde ad alcuna anagrafica censita, l'applicativo interrompe l'elaborazione, scarta la richiesta e registra l'evento nei log (UC55).
- *Inclusioni:* -
- *Estensioni:* UC55
- *Specializzazioni:* -

=== UC53 - Acquisizione del testo del messaggio
- *#G("Attore") principale:* Applicativo - AIRA
- *Attori secondari:* Canale Mail, Canale WhatsApp
- *Precondizioni:*
  - Una nuova richiesta è stata rilevata (UC51), non è duplicata (UC56) e il mittente è stato identificato e associato a un tenant (UC52).
- *Postcondizioni:*
  - Il contenuto testuale del messaggio è estratto, normalizzato e salvato nel database associato alla richiesta.
- *Trigger:* completamento dell'identificazione del mittente e del tenant (UC52).
- *Scenario principale:*
  + L'applicativo legge il corpo testuale della richiesta dal canale di provenienza (corpo della mail o testo del messaggio WhatsApp).
  + L'applicativo ripulisce ed estrae il testo in chiaro.
  + L'applicativo memorizza il contenuto testuale originale e il testo estratto nel database relazionale.
- *Scenari alternativi:* 
  - Messaggio privo di testo: se la richiesta è costituita esclusivamente da una nota vocale o da file allegati senza corpo testuale, l'applicativo registra l'assenza di testo diretto e passa all'acquisizione ed elaborazione degli allegati. (UC54, UC57).
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC54 - Acquisizione degli allegati 
- *#G("Attore") principale:* Applicativo - AIRA
- *Attori secondari:* Canale Mail, Canale WhatsApp
- *Precondizioni:*
  - La richiesta rilevata proviene da un mittente autorizzato e contiene uno o più allegati.
- *Postcondizioni:*
  - Gli allegati validi sono scaricati, cifrati e salvati con riferimento alla richiesta, pronti per i moduli di estrazione.
- *Trigger:* rilevamento di file allegati o contenuti multimediali all'interno della richiesta acquisita.
- *Scenario principale:*
  + L'applicativo individua gli allegati associati alla richiesta.
  + Per ciascun allegato, l'applicativo verifica che il formato del file rientri tra quelli supportati e che la dimensione non superi il limite massimo consentito.
  + L'applicativo scarica i file dal canale e li salva in forma cifrata, collegandoli al record della richiesta nel database.
  + L'applicativo instrada ciascun allegato verso lo specifico caso d'uso di estrazione del contenuto.
- *Scenari alternativi:* 
  - Formato allegato non supportato:se un allegato ha un'estensione non gestita, l'applicativo lo ignora, registra una segnalazione nei log e prosegue l'elaborazione del resto della richiesta senza bloccarla.
  - Dimensione allegato eccessiva: se un allegato supera la soglia massima configurata, l'applicativo non lo acquisisce, registra l'avviso nei log e continua a elaborare eventuali altri allegati validi o il testo.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC55 - Mittente non riconosciuto o non autorizzato
- *#G("Attore") principale:* Canale esterno (e-mail o WhatsApp)
- *Attori secondari:* -
- *Precondizioni:*
  - Il canale di ingresso è attivo e ha consegnato un nuovo messaggio (rilevato tramite polling periodico per e-mail o notificato via webhook per WhatsApp).
  - UC52 è stato avviato ed è stato estratto l'identificativo del mittente (indirizzo e-mail o numero WhatsApp) da una nuova richiesta rilevata.
  - Il confronto con l'anagrafica dei mittenti registrati e con le autorizzazioni del canale ha dato esito negativo.
- *Postcondizioni:*
  - La richiesta viene bloccata e non prosegue le fasi successive della pipeline (estrazione multimodale, elaborazione #G("LLM (Large Language Model)"), esecuzione di azioni verso applicativi target o invio di notifiche), prevenendo accessi non autorizzati.
  - Il contenuto e gli eventuali allegati della richiesta non vengono salvati nel sistema.
  - L'evento di blocco e la relativa motivazione sono registrati nei log di sistema con i soli metadati essenziali (mittente, canale, data/ora e motivo del blocco).
- *Trigger:* Il flusso di UC52 completa la verifica del mittente sull'anagrafica e sulle regole di autorizzazione con esito negativo.
- *Scenario principale:*
  + Il sistema interrompe l'elaborazione della richiesta corrente, impedendo l'accesso alle fasi successive della pipeline (estrazione allegati/audio, elaborazione #G("LLM (Large Language Model)") e chiamate verso applicativi target).
  + Il sistema marca la richiesta come bloccata, senza persistere il contenuto del messaggio o gli allegati.
  + Il sistema registra l'evento di blocco nei log applicativi riportandone i soli metadati.
- *Scenari alternativi:*
  - Tentativo di riconoscimento avanzato del mittente: se il mittente non è censito in anagrafica e la funzionalità opzionale di riconoscimento avanzato è attiva, il sistema attiva UC103.
  - Invio risposta automatica di errore al mittente: solo qualora venga abilitata la funzionalità opzionale di notifica automatica al mittente, il sistema attiva l'estensione UC99 sullo stesso canale di arrivo.
  - Errore tecnico durante la registrazione del log: se il sistema incontra un errore nella scrittura del log, il sistema segnala l'errore interno di logging sulla dashboard amministrativa senza bloccare né elaborare la richiesta.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:*
  - UC103 - Riconoscimento avanzato di mittente non censito.
  - UC99 - Invio risposta di errore al mittente.
- *Specializzazioni:* -

=== UC56 - Richiesta duplicata
- *#G("Attore") principale:* Canale esterno (e-mail o WhatsApp)
- *Attori secondari:* -
- *Precondizioni:*
  - Il canale di ingresso ha reso disponibile un messaggio (rilevato dal polling periodico per e-mail o notificato via webhook per WhatsApp) nell'ambito di UC51.
  - Il sistema ha rilevato che il messaggio corrisponde a una richiesta già acquisita in precedenza, in base allo stesso identificativo univoco oppure allo stesso contenuto inviato dal medesimo mittente a breve distanza temporale.
- *Postcondizioni:*
  - La richiesta duplicata viene scartata e non viene salvato come nuova richiesta né elaborata nuovamente dalla pipeline.
  - I dati e lo stato della richiesta originale già acquisita rimangono inalterati.
  - L'evento di scarto per duplicazione è registrato nei log di sistema (UC79).
- *Trigger:* Durante l'acquisizione di un nuovo messaggio (UC51), la verifica di duplicazione rileva una corrispondenza con una richiesta già presente nel sistema.
- *Scenario principale:*
  + Il sistema confronta l'identificativo univoco del messaggio (e l'impronta del contenuto associata al mittente in una finestra temporale ravvicinata) con le richieste già acquisite, rilevando un duplicato.
  + Il sistema interrompe immediatamente l'acquisizione del messaggio, evitando di generare una nuova richiesta nel database e di avviare le fasi successive della pipeline.
  + Il sistema registra nei log applicativi l'evento di una richiesta duplicata scartata, includendo i metadati inerenti (UC79).
- *Scenari alternativi:*
  - Richiesta originale ancora in stato di elaborazione: se la richiesta corrispondente risulta attualmente in elaborazione, il sistema scarta comunque il messaggio duplicato al passo 2 per prevenire elaborazioni concorrenti.
  - Errore tecnico durante la registrazione del log: se il sistema incontra un errore nella scrittura del log, il sistema segnala l'errore interno di logging sulla dashboard amministrativa senza avviare l'elaborazione del messaggio duplicato.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:* -
- *Specializzazioni:* -

=== UC57 - Trascrizione di nota vocale o file audio
- *#G("Attore") principale:* Canale esterno (WhatsApp)
- *Attori secondari:* Servizio #G("STT (Speech-to-Text)")
- *Precondizioni:*
  - Un messaggio contenente almeno una nota vocale derivante dall'app WhatsApp è stato acquisito (UC51 e UC54) e ha superato il filtro sicurezza e duplicazione.
  - La richiesta si trova in stato di elaborazione.
  - Il motore #G("STT (Speech-to-Text)") configurato è abilitato nel sistema.
- *Postcondizioni:*
  - Il contenuto audio è stato trascritto in formato testuale.
  - Il testo trascritto è associato alla richiesta corrente e salvato in forma protetta, pronto per essere combinato con l'eventuale testo del messaggio ed elaborato dal servizio di #G("LLM (Large Language Model)"), nonché consultato nel dettaglio della richiesta (UC82).
  - La richiesta rimane nello stato di elaborazione e l'avvenuta trascrizione è registrata nei log di sistema (UC79).
- *Trigger:* Durante la fase di estrazione dei contenuti multimodali della pipeline, il sistema rileva che la richiesta acquisita contiene una nota vocale da convertire in testo.
- *Scenario principale:*
  + Il sistema individua la nota vocale associato alla richiesta in stato di elaborazione.
  + Il sistema verifica che la dimensione dell'audio rispetti i vincoli supportati.
  + Il sistema invia il flusso audio al motore #G("STT (Speech-to-Text)") configurato, specificando gli eventuali parametri di elaborazione previsti (e.g. lingua italiana).
  + Il sistema ottiene il testo trascritto e lo unisce in modo strutturato all'eventuale testo già estratto dal corpo del messaggio (UC53).
  + Il sistema salva la trascrizione associandola alla richiesta (in forma protetta) e registra il completamento della fase di trascrizione nei log applicativi (UC79).
- *Scenari alternativi:*
  - Dimensione messaggio audio eccessiva: se l'audio supera la dimensione massima consentita, il sistema non avvia la trascrizione e attiva rispettivamente UC63.
  - Motore #G("STT (Speech-to-Text)") non disponibile, errore tecnico o timeout: se il servizio #G("STT (Speech-to-Text)") esterno non è raggiungibile, va in timeout o restituisce un errore tecnico, il sistema attiva l'estensione UC58.
  - Audio corrotto, muto o incomprensibile: se l'audio è danneggiato, privo di parlato riconoscibile o produce una trascrizione vuota/non utilizzabile, il sistema attiva l'estensione UC58.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:*
  - UC58 - Trascrizione non riuscita.
  - UC63 - Dimensione allegato eccessiva.
- *Specializzazioni:* -

=== UC58 - Trascrizione non riuscita
- *#G("Attore") principale:* Canale esterno (WhatsApp)
- *Attori secondari:* Servizio #G("STT (Speech-to-Text)")
- *Precondizioni:*
  - UC57 è stato avviato per una richiesta in stato di elaborazione proveniente da un mittente già riconosciuto e autorizzato (UC52).
  - L'elaborazione #G("STT (Speech-to-Text)") non ha avuto successo a causa di un'indisponibilità/timeout/errore tecnico del motore #G("STT (Speech-to-Text)") oppure di un audio corrotto, muto o incomprensibile.
- *Postcondizioni:*
  - La trascrizione dell'audio non è disponibile e la richiesta non viene inoltrata ai sistemi target con i dati completi.
  - Lo stato della richiesta è registrato in errore, conservando il riferimento al messaggio e all'audio originale per eventuale consultazione (UC82) o rielaborazione (UC83).
  - L'evento di errore e la causa specifica sono registrati nei log di sistema (UC79) e resi visibili nella dashboard amministrativa.
- *Trigger:* Durante UC57, il motore #G("STT (Speech-to-Text)") restituisce un errore o va in timeout, oppure l'elaborazione produce un testo vuoto/non valido per audio corrotto o incomprensibile.
- *Scenario principale:*
  + Il sistema interrompe la procedura di trascrizione avviata in UC57, evitando di inviare un contenuto audio mancante all'elaborazione semantica (UC64).
  + Il sistema aggiorna lo stato della richiesta impostandolo su errore e mantiene i riferimenti al contenuto originale acquisito.
  + Il sistema registra nei log applicativi l'evento di errore di trascrizione con i metadati necessari, rendendolo consultabile dall'interfaccia amministrativa.
- *Scenari alternativi:*
  - Invio risposta automatica di errore al mittente: qualora la funzionalità opzionale di risposta automatica al mittente sia abilitata e il fallimento sia dovuto a un file audio corrotto o incomprensibile, il sistema attiva UC99 sullo stesso canale di ricezione.
  - Errore tecnico durante il salvataggio dello stato o la registrazione del log: se fallisce la persistenza su database dello stato o la scrittura del log, il sistema registra un errore critico sul log, garantendo che la richiesta non venga inoltrata in modo parziale ai sistemi target.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:*
  - UC99 - Invio risposta di errore al mittente.
- *Specializzazioni:* -

=== UC59 - Estrazione testo da un'immagine (#G("OCR (Optical Character Recognition)"))
- *#G("Attore") principale:* Canale esterno (e-mail)
- *Attori secondari:* Servizio #G("OCR (Optical Character Recognition)")
- *Precondizioni:*
  - Una richiesta contenente almeno un allegato immagine (e.g. JPG o PNG) oppure un'immagine di pagina estratta da un documento PDF scansionato (UC60) è stata acquisita (UC51 e UC54) e ha superato il filtro di sicurezza e duplicazione (UC52, UC55 e UC56).
  - La richiesta si trova nello stato di elaborazione.
  - Il motore #G("OCR (Optical Character Recognition)") configurato è abilitato nel sistema.
- *Postcondizioni:*
  - Il testo presente nell'immagine o scansione è stato estratto tramite tecnologia #G("OCR (Optical Character Recognition)").
  - Il testo estratto è associato alla richiesta corrente e salvato in forma protetta, pronto per essere combinato con eventuale testo del corpo messaggio ed elaborato dal servizio #G("LLM (Large Language Model)"), nonché consultato nel dettaglio della richiesta (UC82).
  - La richiesta rimane nello stato di elaborazione e l'avvenuta estrazione è tracciata nei log applicativi (UC79).
- *Trigger:* Durante la fase di estrazione dei contenuti multimodali della pipeline, il sistema rileva un allegato immagine (oppure una pagina PDF scansionata in UC60) da sottoporre a riconoscimento ottico dei caratteri.
- *Scenario principale:*
  + Il sistema individua l'allegato immagine (o l'immagine di pagina estratta in UC60) associato alla richiesta in stato di elaborazione.
  + Il sistema verifica che il formato del file (e.g. JPG o PNG) e la sua dimensione rispettino i vincoli configurati.
  + Il sistema applica eventuali operazioni preliminari di normalizzazione dell'immagine e la elabora mediante il motore #G("OCR (Optical Character Recognition)") configurato.
  + Il sistema riceve il testo estratto dall'#G("OCR (Optical Character Recognition)") e lo integra in modo ordinato con l'eventuale testo già acquisito dal corpo del messaggio (UC53) o da altri allegati.
  + Il sistema salva il testo estratto associandolo alla richiesta (in forma protetta) e registra il completamento dell'estrazione OCR nei log di sistema (UC79).
- *Scenari alternativi:*
  - Formato immagine non supportato o dimensione eccessiva: se il file immagine presenta un formato non supportato oppure supera la dimensione massima consentita, il sistema non esegue il motore #G("OCR (Optical Character Recognition)") e attiva UC62 e UC63.
  - Motore #G("OCR (Optical Character Recognition)") non disponibile, errore tecnico o timeout: se il servizio #G("OCR (Optical Character Recognition)") esterno non è raggiungibile, va in timeout o il modulo genera un errore tecnico, il sistema registra l'errore nei log (UC79) e aggiorna lo stato della richiesta in errore.
  - Immagine corrotta, illeggibile o prima di testo riconoscibile: se il file immagine è danneggiato o il motore #G("OCR (Optical Character Recognition)") non estrae alcun testo leggibile:
    - se la richiesta contiene già un corpo testuale valido (UC53) o altri allegati estratti con successo, il sistema registra nei log l'avviso sull'immagine non leggibile (UC79) e prosegue l'elaborazione sul contenuto disponibile;
    - se l'immagine era l'unica fonte informativa utile della richiesta, il sistema imposta lo stato su errore, registra l'errore nei log (UC79) ed eventualmente attiva UC99.
  - Presenza di più immagini o pagine scansionate: se la richiesta contiene più allegati immagine (o più pagine scansionate di un PDF), il sistema ripete i passi 2-4 per ciascuna immagine valida e concatena ordinatamente i testi estratti nella stessa richiesta.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:*
  - UC62 - Formato allegato non supportato.
  - UC63 - Dimensione allegato eccessiva.
  - UC99 - Invio risposta di errore al mittente.
- *Specializzazioni:* -

=== UC60 - Estrazione testo da documento PDF
- *#G("Attore") principale:* Canale esterno (e-mail)
- *Attori secondari:* -
- *Precondizioni:*
  - Una richiesta contenente almeno un allegato in formato PDF è stata acquisita (UC51 e UC54) e ha superato il filtro di sicurezza e duplicazione (UC52, UC55 e UC56).
  - La richiesta si trova nello stato di elaborazione.
- *Postcondizioni:*
  - Il contenuto testuale del documento PDF è stato estratto, avvalendosi eventualmente di UC59 in caso di documento scansionato.
  - Il testo estratto e il documento PDF originale sono associati alla richiesta e salvati in forma cifrata, pronti per l'elaborazione semantica tramite servizio #G("LLM (Large Language Model)") e per la consultazione nel dettaglio richiesta (UC82).
  - La richiesta rimane nello stato di elaborazione e l'avvenuta estrazione è registrata nei log di sistema (UC79).
- *Trigger:* Durante la fase di estrazione dei contenuti multimodali della pipeline, il sistema rileva un allegato PDF da cui estrarre il testo.
- *Scenario principale:*
  + Il sistema individua l'allegato in formato PDF associato alla richiesta in stato di elaborazione.
  + Il sistema verifica che il file sia un documento PDF integro/valido e che la sua dimensione rispetti il limite massimo configurato.
  + Il sistema analizza il contenuto del PDF ed estrae il testo digitale nativo presente nelle pagine del documento, rispettandone l'ordine.
  + Il sistema verifica che il testo estratto sia significativo e lo integra in modo ordinato con l'eventuale testo già estratto dal corpo del messaggio (UC53) o da altri allegati.
  + Il sistema salva il testo estratto e conserva l'allegato PDF originale in forma cifrata, registrando il completamento dell'estrazione nei log applicativi (UC79).
- *Scenari alternativi:*
  - File non valido o dimensione eccessiva: se l'allegato non è un file PDF valido (e.g. estensione incoerente o formato non supportato) oppure supera la dimensione massima consentita, il sistema non avvia l'estrazione e attiva rispettivamente UC62 o UC63.
  - PDF scansionato o ibrido (privo di testo digitale nativo su una o più pagine): se il parser rileva che il PDF (in tutto o in parte) è composto da immagini scansionate prive di strato testuale estraibile, il sistema estrae le immagini delle pagine interessate e attiva UC59 per ricavarne il testo, proseguendo poi al passo 4.
  - PDF corrotto, protetto da password o privo di testo estraibile: se il PDF risulta danneggiato, protetto da password o illeggibile anche tramite #G("OCR (Optical Character Recognition)"):
    - se la richiesta contiene già un corpo testuale valido (UC53) o altri allegati estratti con successo, il sistema registra nei log l'avviso relativo al PDF non elaborabile (UC79) e prosegue l'elaborazione sul contenuto rimanente;
    - se il PDF era l'unica fonte informativa utile della richiesta, il sistema aggiorna lo stato in errore, registra l'errore nei log (UC79) ed eventualmente attiva UC99.
  - Presenza di più documenti PDF: se la richiesta contiene più allegati PDF, il sistema ripete i passi 2-4 per ciascun documento valido e concatena ordinatamente i testi estratti nella stessa richiesta.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:*
  - UC59 - Estrazione testo da immagine (#G("OCR (Optical Character Recognition)"))
  - UC62 - Formato allegato non supportato.
  - UC63 - Dimensione allegato eccessiva.
  - UC99 - Invio risposta di errore al mittente.
- *Specializzazioni:* -

=== UC61 - Interpretazione visiva di etichette e cataloghi
- *#G("Attore") principale:* Applicativo - AIRA
- *Attori secondari:* OCR
- *Precondizioni:*
  - Una richiesta non duplicata proveniente da un mittente identificato è in fase di elaborazione e contiene un allegato visivo (es. immagine o foto di etichetta o catalogo) acquisito tramite UC54.
- *Postcondizioni:*
  - Le informazioni visive estratte dall'etichetta o dalla foto di catalogo (es. codici, descrizioni, riferimenti prodotto) sono rese disponibili in forma testuale/strutturata per le fasi successive di classificazione ed estrazione entità.
- *Trigger:* rilevamento di un allegato visivo (etichetta o foto di catalogo) da interpretare visivamente nell'ambito della pipeline di elaborazione.
- *Scenario principale:*
  + L'applicativo individua l'allegato visivo (etichetta o foto di catalogo) associato alla richiesta in elaborazione.
  + L'applicativo invia l'allegato al servizio di OCR configurato.
  + Il servizio OCR analizza l'immagine e interpreta elementi visivi come etichette, foto di cataloghi e riferimenti di prodotto.
  + L'applicativo acquisisce il risultato dell'interpretazione visiva e lo rende disponibile alle fasi successive della pipeline (estrazione delle entità e mappatura sui codici articolo del catalogo).
- *Scenari alternativi:* 
  - Formato o dimensione non validi: se l'allegato non è supportato o eccede la dimensione consentita, l'applicativo lo ignora, registra una segnalazione nei log e prosegue l'elaborazione del resto della richiesta senza bloccarla.
  - Interpretazione non riuscita o parziale: se l'immagine è illeggibile o il modello non riesce a interpretare il contenuto visivo, l'applicativo registra l'esito/anomalia nei log e prosegue con eventuali altri contenuti disponibili o gestisce lo stato della richiesta.
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC62 - Formato allegato non supportato
- *#G("Attore") principale:* Applicativo - AIRA
- *Attori secondari:* -
- *Precondizioni:*
  - Durante l'acquisizione o la lettura degli allegati di una richiesta, l'applicativo incontra un file allegato (UC54).
- *Postcondizioni:*
  - L'allegato con formato non supportato viene escluso dall'estrazione multimodale, l'anomalia è segnalata/registrata nei log e l'elaborazione del resto della richiesta prosegue senza interruzioni.
- *Trigger:* l'applicativo rileva che un allegato ha un formato (estensione o tipo file) non compreso tra quelli supportati.
- *Scenario principale:*
  + L'applicativo verifica il formato dell'allegato durante la fase di acquisizione (UC54).
  + L'applicativo rileva che il formato del file non è supportato.
  + L'applicativo segnala l'allegato non supportato e registra l'evento nei log.
  + L'applicativo prosegue l'elaborazione del testo e degli eventuali altri allegati validi della richiesta senza interrompere la pipeline di lavorazione.
- *Scenari alternativi:* -
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC63 - Dimensione allegato eccessiva
- *#G("Attore") principale:* Applicativo - AIRA
- *Attori secondari:* -
- *Precondizioni:*
  - Durante l'acquisizione o la lettura degli allegati di una richiesta, l'applicativo esamina un file allegato (UC54).
- *Postcondizioni:*
  - L'allegato che supera la dimensione massima consentita non viene elaborato, l'anomalia viene segnalata e registrata nei log e l'elaborazione del resto della richiesta continua senza bloccarsi.
- *Trigger:* l'applicativo rileva che la dimensione di un allegato supera la soglia massima configurata.
- *Scenario principale:*
  + L'applicativo controlla la dimensione dell'allegato durante la fase di acquisizione (UC54).
  + L'applicativo rileva che la dimensione del file eccede il limite massimo consentito.
  + L'applicativo segnala l'allegato con dimensione eccessiva e l'evento viene registrato nei log.
  + L'applicativo prosegue l'elaborazione del resto della richiesta (testo e altri allegati validi) senza interrompere il flusso di lavoro.
- *Scenari alternativi:* - 
- *Inclusioni:* -
- *Estensioni:* -
- *Specializzazioni:* -

=== UC64 - Classificazione della tipologia di richiesta
- *#G("Attore") principale:* Canale esterno (e-mail o WhatsApp)
- *Attori secondari:* Servizio #G("LLM (Large Language Model)")
- *Precondizioni:*
  - Una richiesta proveniente da un mittente riconosciuto ha completato le fasi di acquisizione ed eventuale estrazione multimodale (UC53, UC57, UC59, UC60).
  - La richiesta dispone di un contenuto testuale utile su cui operare e si trova nello stato di elaborazione.
  - Il servizio #G("LLM (Large Language Model)") configurato è attivo e collegato tramite interfaccia modulare.
- *Postcondizioni:*
  - Alla richiesta è stata assegnata una tipologia valida tra quelle supportate dal sistema (ordine d'acquisto, ticket di assistenza, prenotazione di appuntamento, opportunità commerciale, richiesta di documenti contabili ed eventuali altre tipologie configurate).
  - In caso di più intenzioni nel testo, è mantenuta la sola intenzione principale mentre le secondarie risultano tracciate nei log.
  - La richiesta rimane nello stato di elaborazione, pronta per l'estrazione delle entità (UC66) e la classificazione è registrata nei log (UC79).
- *Trigger:* Al termine dell'acquisizione e dell'estrazione del testo dai contenuti multimodali, la pipeline avvia la fase di elaborazione semantica per classificare la richiesta.
- *Scenario principale:*
  + Il sistema assembla il testo complessivo della richiesta (corpo del messaggio ed eventuali testi estratti da audio, immagini o PDF), insieme all'elenco delle tipologie di richiesta riconosciute dal sistema.
  + Il sistema avvia la richiesta di classificazione al servizio #G("LLM (Large Language Model)") attraverso l'interfaccia modulare.
  + Il servizio #G("LLM (Large Language Model)") interpreta semanticamente il contenuto e restituisce la tipologia individuata tra quelle supportate (classificando come "ticket di assistenza" anche le e-mail semplici prive di altre intenzioni specifiche).
  + Il sistema verifica che la tipologia restituita appartenga all'insieme delle tipologie valide, la associa alla richiesta corrente (mantenuta in stato di elaborazione) e registra l'evento di classificazione nei log applicativi (UC79).
- *Scenari alternativi:*
  - Servizio #G("LLM (Large Language Model)") non disponibile, timeout o risposta malformata: se il servizio #G("LLM (Large Language Model)") non è raggiungibile, supera il timeout configurato oppure restituisce un output tecnicamente non interpretabile, il sistema imposta lo stato della richiesta in errore, registra l'errore nei log (UC79) e non procede verso UC66.
  - Rilevamento di più intenzioni nel medesimo documento: se il servizio #G("LLM (Large Language Model)") individua più richieste o intenzioni distinte all'interno dello stesso testo, il sistema attiva UC72 per selezionare l'intenzione principale e registrare le secondarie nei log, proseguendo poi al passo 4 con la tipologia dell'intenzione principale.
  - Tipologia non determinabile: se il servizio #G("LLM (Large Language Model)") non riesce a ricondurre il contenuto ad alcuna tipologia supportata (o la classificazione risulta ambigua/non valida), il sistema attiva UC65.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:*
  - UC65 - Tipologia non determinabile.
  - UC72 - Richiesta con più intenzioni.
- *Specializzazioni:* -

=== UC65 - Tipologia non determinabile
- *#G("Attore") principale:* Canale esterno (e-mail o WhatsApp)
- *Attori secondari:* -
- *Precondizioni:*
  - UC64 è stato avviato per una richiesta in stato di elaborazione proveniente da un mittente riconosciuto (UC52).
  - Il servizio #G("LLM (Large Language Model)") ha completato l'analisi senza errori tecnici di comunicazione, ma non è riuscito a ricondurre il contenuto ad alcuna delle tipologie previste (o ha prodotto una classificazione ambigua/non valida).
- *Postcondizioni:*
  - La richiesta non viene inoltrata automaticamente verso alcun applicativo target con una tipologia incerta o errata.
  - Lo studio della richiesta è registrato in stato di errore (marcata come tipologia non elaborata per tipologia non determinabile), conservando il contenuto originale protetto per eventuale consultazione (UC82) o rielaborazione (UC83) (salvo ripiego su "ticket di assistenza").
  - L'evento e la motivazione sono registrati nei log di sistema (UC79) e resi visibili nella dashboard amministrativa.
- *Trigger:* Durante UC64 il sistema rileva che la classificazione restituita dal servizio #G("LLM (Large Language Model)") non individua alcuna tipologia valida tra quelle configurate.
- *Scenario principale:*
  + Il sistema interrompe la procedura di elaborazione semantica avviata in UC64, impedendo il proseguimento verso l'estrazione delle entità (UC66) e l'esecuzione delle azioni automatiche.
  + Il sistema conserva il riferimento e il contenuto originale della richiesta in forma protetta e ne aggiorna lo stato in errore (non elaborata per tipologia non determinabile).
  + Il sistema registra l'evento nei log applicativi specificando i metadati necessari con motivazione (tipologia non determinabile) (UC79), rendendolo consultabile dall'amministratore.
- *Scenari alternativi:*
  - Applicazione della tipologia di ripiego su "ticket di assistenza": qualora la configurazione applicativa preveda il ticket di assistenza come tipologia di ripiego per richieste non classificabili, il sistema assegna alla richiesta la tipologia "ticket di assistenza", registra nei log il ricorso alla tipologia di ripiego (UC79) e prosegue verso UC66 per verificare la presenza dei dati minimi (passando comunque allo stato di errore solo qualora manchino i dati minimi del ticket).
  - Invio alla coda di validazione manuale: qualora la funzionalità opzionale di validazione umana sia abilitata, anziché impostare lo stato in errore, il sistema lo stato da validare e accoda la richiesta affinché l'operatore possa assegnare manualmente la tipologia o scartarla.
  - Invio risposta automatica di errore al mittente: qualora la funzionalità opzionale di notifica automatica al mittente sia abilitata e la richiesta non venga recuperata all'interno degli scenari alternativi precedenti, il sistema attiva UC99 sullo stesso canale di arrivo.
  - Errore tecnico durante il salvataggio dello stato o del log: se fallisce la persistenza su database dello stato o la scrittura del log, il sistema emette un errore critico sul canale diagnostico di sistema, garantendo che la richiesta non venga inoltrata a sistemi target.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:*
  - UC99 - Invio risposta di errore al mittente
- *Specializzazioni:* -

=== UC66 - Estrazione delle entità
- *#G("Attore") principale:* Canale esterno (e-mail o WhatsApp)
- *Attori secondari:* Servizio #G("LLM (Large Language Model)")
- *Precondizioni:*
  - La richiesta in stato di elaborazione proviene da un mittente riconosciuto e ha completato l'acquisizione e l'eventuale estrazione dei contenuti multimodali (UC53, UC57, UC59, UC60).
  - UC64 ha assegnato alla richiesta una tipologia valida (riferita all'eventuale intenzione principale individuata in UC72).
  - Il servizio #G("LLM (Large Language Model)") configurato e la definizione dei campi/entità attesi per la tipologia riconosciuta sono disponibili nel sistema.
- *Postcondizioni:*
  - Le entità rilevanti per la tipologia riconosciuta (relative alla sola intenzione principale) sono state estratte dal contenuto testuale tramite il servizio #G("LLM (Large Language Model)").
  - I valori estratti sono associati alla richiesta corrente (che permane in stato di elaborazione), pronti per l'eventuale mappatura su catalogo (UC67), la strutturazione secondo template #G("JSON (JavaScript Object Notation)") (UC69) e la validazione rispetto allo schema (UC70).
  - L'avvenuta estrazione delle entità è registrata nei log applicativi (UC79).
- *Trigger:* Al termine della classificazione della tipologia (UC64), la pipeline avvia l'estrazione delle entità rilevanti dal testo della richiesta.
- *Scenario principale:*
  + Il sistema recupera la tipologia assegnata in UC64, l'elenco delle entità attese per tale tipologia e il testo completo della richiesta.
  + Il sistema invia il contenuto testuale e la specifica delle entità da individuare al servizio #G("LLM (Large Language Model)") mediante l'interfaccia modulare.
  + Il servizio #G("LLM (Large Language Model)") analizza il testo non strutturato (gestendo linguaggio informale, abbreviazioni e codici parziali) ed estrae i valori delle entità pertinenti alla tipologia riconosciuta (e.g. articoli e quantità per gli ordini, descrizione del problema per i ticket, data/ora per gli appuntamenti, prodotto/servizio per le opportunità e tipo di documento per i documenti contabili).
  + Il sistema acquisisce le entità estratte restituite dal servizio #G("LLM (Large Language Model)"), le associa alla richiesta corrente (in stato di elaborazione) e registra il completamento dell'estrazione nei log applicativi (UC79).
- *Scenari alternativi:*
  - Servizio #G("LLM (Large Language Model)") non disponibile, timeout o output non interpretabile: se il servizio #G("LLM (Large Language Model)") non è raggiungibile, supera il timeout configurato oppure restituisce un risultato tecnicamente malformato o non utilizzabile, il sistema aggiorna lo stato della richiesta in errore, registra l'errore nei log (UC79) e non prosegue verso UC69 e UC70.
  - Estrazione parziale o mancata individuazione di alcune entità: se il servizio #G("LLM (Large Language Model)") completa l'elaborazione ma non individua dal testo uno o più campi attesi (o restituisce valori incerti), il sistema acquisisce comunque le entità rilevate e prosegue verso la strutturazione e validazione (UC69 e UC70), demandando a UC70 e UC71 la rilevazione formale di eventuali dati incompleti e all'eventuale coda da validare (se attiva la validazione umana).
  - Errore tecnico durante il salvataggio delle entità o del log: se fallisce la persistenza su database dei dati estratti o la scrittura nel log, il sistema imposta lo stato in errore ed emette un errore critico nel sistema di diagnostica, impedendo l'inoltro della richiesta ai sistemi target.
- *Inclusioni:*
  - UC79 - Registrazione evento nei log.
- *Estensioni:* -
- *Specializzazioni:* -