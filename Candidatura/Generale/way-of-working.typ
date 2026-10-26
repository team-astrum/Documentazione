#import "../../Template/tmp-documentazione.typ": conf, usecase

#show: conf.with(
  titolo: "Way of Working",
  status: "In bozza", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Corrado Bacco", "Samuele Gobbi","Gianluca Brotto", "Thomas Morettin"),
  verifica: ("Gianluca Bacco", "Matteo De Col"),
  approvazione: "Filippo De Guio",
  changelog: (
     (ver: "0.0.3", data: "2026-10-26", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"Gianluca Bacco", desc: "Correzioni"),
    (ver: "0.0.2", data: "2026-10-26", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"Gianluca Bacco", desc: "Miglioramento impaginazione del documento"),
    (ver: "0.0.1", data: "2026-10-26", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"Gianluca Bacco", desc: "Stesura della bozza inziale di documento."),
  )
)

// --- INIZIO CONTENUTO DEL DOCUMENTO ---

= Introduzione
== Componenti del gruppo 
#table(
  columns: (8em, 8em, 8em), 
  align: center + horizon,  
  
  [*Cognome*], [*Nome*], [*Matricola*],

  [Bacco], [Corrado], [2148615],
  [Bacco], [Gianluca], [2111937],
  [Brotto], [Gianluca], [2148626],
  [De Guio], [Filippo], [2113177],
  [Gobbi], [Samuele], [2148004],
  [Morettin], [Thomas], [2111001]

)
== Scopo del documento
Questo documento ha lo scopo di definire in forma univoca il metodo di lavoro, le regole redazionali e i criteri di gestione dei documenti, così da garantire coerenza, tracciabilità e chiarezza operativa. La presente versione costituisce la base metodologica iniziale e sarà aggiornata con l’avanzare del progetto.

== Stato del progetto
Al momento il capitolato non è assegnato. Il documento disciplina l’assetto organizzativo e documentale iniziale: collaborazione, convenzioni per la stesura dei documenti e pubblicazione dei deliverable. Le sezioni relative a prodotto, pianificazione dettagliata e processi qualitativi, verifica e validazione saranno integrate nelle successive versioni, in relazione al capitolato che ci aggiudicheremo. 

== Glossario
= Infrastruttura di supporto
== Obiettivo
L’obiettivo di questa sezione è definire l’insieme di strumenti e configurazioni adottate dal gruppo a supporto della collaborazione e comunicazione, dell’organizzazione e l’integrazione tecnica del progetto. Nonostante ci si trovi in una fase preliminare, il team ha scelto di predisporre fin da subito un ambiente strutturato che garantisca tracciabilità, trasparenza e continuità operativa per l’intera durata del progetto.

== Strumenti di collaborazione e comunicazione
- *Comunicazione interna*
  \ Il gruppo utilizza WhatsApp come canale di comunicazione principale. La scelta è motivata dalla sua ampia diffusione, dalla facilità di utilizzo e dalla possibilità di comunicare in modo rapido e immediato tra tutti i membri del gruppo. Attraverso la creazione di una chat condivisa, i partecipanti possono scambiarsi informazioni, condividere materiali e documenti, confrontarsi sulle attività da svolgere e coordinare l'organizzazione del lavoro.

  Per le riunioni sincrone viene adottato Discord in quanto consente di organizzare incontri a distanza in tempo reale, facilitando il confronto diretto tra i membri del gruppo. La piattaforma offre canali vocali, videochiamate e sondaggi permettendo ai partecipanti di discutere gli argomenti di lavoro, chiarire eventuali dubbi e prendere decisioni condivise. Inoltre, la possibilità di condividere lo schermo risulta particolarmente utile per esaminare documenti, presentare idee, analizzare materiali comuni e collaborare alla risoluzione di eventuali problemi.  Un ulteriore vantaggio di Discord è la possibilità di organizzare i canali in modo strutturato, separando le conversazioni dedicate a specifici argomenti e rendendo più semplice la gestione delle attività. Rispetto alla comunicazione esclusivamente testuale, le riunioni sincrone favoriscono un'interazione più immediata e permettono di ridurre i tempi necessari per chiarire incomprensioni o coordinare il lavoro.

  L'utilizzo di Discord viene quindi affiancato a WhatsApp: mentre quest'ultimo è impiegato principalmente per gli scambi rapidi di informazioni e per il coordinamento quotidiano, Discord viene utilizzato per gli incontri che richiedono un confronto diretto, una discussione approfondita o una pianificazione condivisa. Questa combinazione consente al gruppo di adattare gli strumenti di comunicazione alle diverse esigenze organizzative, migliorando il coordinamento e la collaborazione tra i partecipanti. 

- *Comunicazione esterna*	

  L'indirizzo *astrum.unipd\@gmail.com* costituisce l'unico punto di contatto ufficiale del team con il committente e la proponente. La posta elettronica viene utilizzata per le comunicazioni formali, l'invio e la ricezione di documenti, la condivisione di informazioni rilevanti e la gestione delle comunicazioni che richiedono una tracciabilità maggiore rispetto ai messaggi informali. La presenza di un unico indirizzo di riferimento consente di centralizzare le comunicazioni esterne, garantire uniformità nelle risposte e ridurre il rischio di dispersione delle informazioni.

  Per i colloqui esplorativi e gli Sprint Review periodici con i referenti aziendali vengono utilizzate piattaforme di videoconferenza quali Zoom, Google Meet o Microsoft Teams. Questi strumenti permettono di instaurare un confronto diretto con gli interlocutori esterni, raccogliere requisiti e aspettative, presentare i risultati raggiunti e ricevere feedback sul lavoro svolto. Gli incontri rappresentano inoltre un'importante occasione per verificare la coerenza delle attività con gli obiettivi concordati e definire eventuali modifiche o priorità per gli sprint successivi.




