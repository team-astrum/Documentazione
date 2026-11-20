#import "../Template/tmp-documentazione.typ": conf, usecase, G

#show: conf.with(
  titolo: "Analisi dei Requisiti",
  status: "Da approvare", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Filippo De Guio", "Matteo De Col", "Gianluca Bacco"),
  verifica: ("Samuele Gobbi",),
  approvazione: " ",
  changelog: (
    (ver: "0.4.1", data: "2026-11-20", autore: "Thomas Morettin", ruolo: "Analista", verificatore:"", desc: "Inserimento diagrammi casi d'uso UC1 - UC9"),
    (ver: "0.4.0", data: "2026-11-19", autore: "Thomas Morettin", ruolo: "Analista", verificatore:"", desc: "Stesura casi d'uso UC1 - UC9"),
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
  - *Amministratore*: utente con privilegi elevati, può configurare i canali attivi, consultare le richieste, consultare lo storico dei log e gestire la persistenza locale dei dati.
  - *Operatore:* utente che si occupa dell'eventuale validazione manuale delle richieste.
  
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
  - L'utente è autenticato nel sistema (#G("sessione") attiva abbinata ad un #G("token", def: "Una stringa di dati crittografata che viene rilasciata da un server dopo il login dell'utente; permette all'utente di navigare tra diverse pagine o servizi senza dover reinserire ogni volta le proprie credenziali.") valido).
  - Il sistema ha caricato i permessi necessari associati alla figura di amministratore; l'utente viene quindi reindirizzato all'interfaccia amministrativa con le proprie funzionalità attive.
- *Trigger:* L'utente non autenticato effettua l'accesso all'interfaccia web-based AIRA inserendo e-mail e password.
- *Scenario principale:*
  + Il sistema mostra all'utente la pagina di autenticazione dove è possibile inserire e-mail e password.
  + L'utente non autenticato inserisce il proprio e-mail (include UC1.1).
  + L'utente non autenticato inserisce la propria password (include UC1.2) e invia il modulo di accesso.
  + Il sistema verifica che lo e-mail esista, l'account associato sia attivo e che la password corrisponda alle credenziali memorizzate.
  + Il sistema associa la #G("sessione") al ruolo di amministratore, genera il relativo #G("token") di accesso a scadenza e concede l'accesso all'interfaccia secondo i permessi previsti.
  + L'operazione appena eseguita dall'utente genera una riga inerente all'operazione di accesso andato a buon fine all'interno del file di log dedicato (non esiste salvataggio in chiaro dei campi e-mail e password).
- *Scenari alternativi:*
  - Campi obbligatori mancanti: prima dell'invio dei dati e-mail e password, se mancanti, il sistema segnala i campi mancanti all'utente non autenticato e lo invita a completarli, tornando al passo 2.
  - Credenziali errate o account non riconosciuto: il sistema non autentica l'utente ed estende UC2 (mostrando un messaggio di errore generico rispettando il principio di "secure by default & by design"); il sistema riprende dal passo 1.
  - Utente già autenticato (accesso diretto): se l'utente possiede già una #G("sessione") aperta per il ruolo di amministratore, il sistema bypassa il form di accesso e mostra direttamente l'interfaccia dedicata.
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
  - L'utente non autenticato visualizza un messaggio di errore informativo e resta nella schermata di autenticazione, pronto per un nuovo tentativo UC1.
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
  - L'interfaccia visualizza nuovamente la schermata di autenticazione per UC1 ed eventuali richieste successivo verso risorse protette con il #G("token") precedente vengono rifiutate.
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
  + L'amministratore seleziona le sezione di gestione dei canali nell'interfaccia amministrativa web-based AIRA.
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
  - #G("Sessione") scaduta o permessi insufficienti: se al momento del salvataggio la #G("sessione") è scaduta o l'utente non dispone dei permessi di amministratore, il sistema nega l'operazione l'operazione senza salvare dati (reindirizzando a UC1 se la #G("sessione") è scaduta).
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
  - #G("Host") mancante o sintatticamente non valido: se il campo #G("host") viene lasciato vuoto o contiene caratteri non validi, l'anomalia viene segnalata in fase di validazione in UC8 (attivando UC18).
  - Porta mancante o fuori intervallo: se il numero di porta è vuoto, non numerico o esterno all'intervallo valido (1 - 65.535), l'anomalia viene segnalata in fase di validazione in UC8 (attivando UC18).
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
  - #G("Sessione") scaduta o permessi insufficienti: se al momento del salvataggio la #G("sessione") è scaduta o l'utente non dispone dei permessi di amministratore, il sistema nega l'operazione l'operazione senza salvare dati (reindirizzando a UC1 se la #G("sessione") è scaduta).
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
  + Il sistema acquisisce i valori inseriti, mascherando (rispettando il principio di "secure by default & by design") per impostazione predefinita a schermo i caratteri del #G("token") o della chiave per impedirne la lettura visiva.
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
- *#G("Attore") primario:* Amministratore \

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

- *Specializzazioni:* -

- *Estensioni:* UC17


=== UC11 - Modifica configurazione canale di comunicazione
- *#G("Attore") primario:* Amministratore \

- *Attori secondari:* -\

- *Precondizioni:* l'amministratore è autenticato nell'interfaccia web-based ed è presente almeno un canale di comunicazione configurato nell'applicazione. 
- *Postcondizioni:* i parametri aggiornati del canale (es. credenziali, #G("host"), percorso o cartella monitorata) sono presenti nel database.\

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

- *Specializzazioni:* -

=== UC12 - Attivazione del canale di comunicazione
- *#G("Attore") primario:* Amministratore \

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

- *Specializzazioni:* -

- *Estensioni:* UC17

=== UC13 - Disattivazione del canale di comunicazione 
- *#G("Attore") primario:* Amministratore \

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

- *Specializzazioni:* -

=== UC14 - Eliminazione del canale di comunicazione 
- *#G("Attore") primario:* Amministratore \

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
- *Specializzazioni:* -

=== UC15 - Connessione al canale di comunicazione 
- *#G("Attore") primario:* Amministratore \

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
- *Specializzazioni:* -
- *Estensioni:* UC16, UC17

=== UC16 - Connessione al canale di comunicazione non riuscita
- *#G("Attore") primario:* Amministratore \

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
- *Specializzazioni:* -

=== UC17 - Configurazione del canale di comunicazione non valida
- *#G("Attore") primario:* Amministratore \

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

- *Specializzazioni:* -

=== UC18 - Associazione canale a tenant
- *#G("Attore") primario:* Amministratore \

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

- *Specializzazioni:* -


=== UC19 - Creazione del tenant
- *#G("Attore") primario:* Amministratore \

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

- *Specializzazioni:* -

- *Estensioni:* UC20




=== UC21 -