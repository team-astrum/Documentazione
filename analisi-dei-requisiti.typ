#import "Template/tmp-documentazione.typ": conf, usecase, G

#show: conf.with(
  titolo: "Analisi dei Requisiti",
  status: "Da approvare", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Filippo De Guio", "Matteo De Col", "Gianluca Bacco"),
  verifica: ("Samuele Gobbi",),
  approvazione: " ",
  changelog: (
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

