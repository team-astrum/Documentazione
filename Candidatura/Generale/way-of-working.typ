#import "../../Template/tmp-documentazione.typ": conf, usecase, G

#show: conf.with(
  titolo: "Way of Working",
  status: "In bozza", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Corrado Bacco", "Samuele Gobbi","Gianluca Brotto", "Thomas Morettin"),
  verifica: ("Gianluca Bacco", "Matteo De Col"),
  approvazione: "Filippo De Guio",
  changelog: (
      (ver: "0.1.0", data: "2026-10-27", autore: "Gianluca Brotto", ruolo: "Redattore", verificatore:"Matteo De Col", desc: "Aggiunta sezione: Gestione e Organizzazione dei Ruoli"),
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


= Gestione e Organizzazione dei Ruoli
== Ruoli e Responsabilità
Per ogni ruolo previsto vengono definite le specifiche responsabilità:

- *Responsabile*:
  - Guida il team, assicurando l’allineamento alle tempistiche e al metodo di lavoro stabilito.
  - Gestisce tutte le relazioni e comunicazioni con l'azienda Proponente e i Committenti. 
  - Redige i Diari di Bordo settimanali.
  - Approva ufficialmente la documentazione prodotta prima del rilascio formale. 
  - Pianifica le attività all'inizio di ogni sprint e assegna i relativi task ai membri.

- *Amministratore*:
  - Gestisce e mantiene l’ambiente di lavoro (repository, strumenti di comunicazione, issue tracking system). 
  - Implementa e fa manutenzione delle automazioni di progetto, come le pipeline di Continuous Integration/Continuous Deployment (CI/CD) e la compilazione automatica dei documenti. 
  - Risolve tempestivamente i problemi tecnici e i malfunzionamenti legati agli strumenti in uso al team. 
  - Aggiorna i documenti e le informazioni all’interno del sito web.
  - Redige i verbali delle riunioni interne ed esterne. 

- *Analista*:
  - Interagisce con il Proponente per individuare, studiare e comprendere i bisogni del progetto. 
  - Classifica i requisiti software ( ad esempio in funzionali / non funzionali)  e assegna le priorità di sviluppo in accordo con gli stakeholder.
  - Elabora il modello concettuale del sistema, identificando gli attori coinvolti e redige i diagrammi dei casi d'uso (Use Case Diagram). 
  - Redige il documento di Analisi dei Requisiti. 

- *Progettista*:
  - Produce l’architettura software sulla base dei requisiti prodotti dagli analisti.
  - Seleziona lo stack tecnologico e i pattern architetturali più adatti per soddisfare i requisiti. 
  - Produce i diagrammi UML necessari.

- *Verificatore*:
  - Controlla che ogni attività di progetto sia svolta in conformità alle Norme di Progetto stabilite. 
  - Verifica la correttezza formale, ortografia e semantica della documentazione prodotta prima della sua approvazione. 
  - Controlla il codice prodotto dai programmatori, segnalando refusi, bug e violazioni di stile. 

- *Programmatore*:
  - Implementa il codice rispettando l'architettura definita dal Progettista.
  - Crea i test unitari specifici per le unità di codice sviluppate al fine di assicurare il corretto funzionamento.

== Politica di Rotazione

Il gruppo adotta un’organizzazione del lavoro iterativa e incrementale, articolata in periodi di sviluppo denominati sprint, ciascuno della durata fissa di due settimane. Al fine di assicurare che ogni membro acquisisca esperienza in tutti 
gli ambiti del progetto, il gruppo applica una politica di rotazione dei ruoli. 

La rotazione avviene all’inizio di ogni sprint, quindi ogni due settimane: in tale occasione il Responsabile assegna a ciascun membro il ruolo che ricoprirà nello sprint successivo. Tale cadenza permette a ogni membro di svolgere un ruolo per un periodo sufficientemente lungo da comprenderne a fondo le attività, riducendo i tempi di chiarimento e le difficoltà di apprendimento. L’assegnazione tiene conto sia della natura del lavoro previsto per lo sprint, sia dei ruoli già ricoperti da ciascun membro, in modo da garantire che ognuno svolga tutti i ruoli previsti almeno una volta nel corso dell’intero progetto.

Al termine di ogni sprint, il membro uscente da un ruolo redige un resoconto delle attività svolte e, nella fase iniziale dello sprint successivo, fornisce supporto al subentrante per chiarire eventuali dubbi e rendere l’inserimento al nuovo ruolo il più veloce possibile. 






