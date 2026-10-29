#import "Template/tmp-documentazione.typ": conf, usecase, G

#show: conf.with(
  titolo: "Norme di Progetto",
  status: "Approvato", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Corrado Bacco", "Samuele Gobbi","Gianluca Brotto", "Thomas Morettin"),
  verifica: ("Gianluca Bacco", "Matteo De Col"),
  approvazione: "Filippo De Guio",
  changelog: (
      (ver: "1.0.0", data: "2026-10-29", autore: "Gianluca Brotto", ruolo: "Redattore", verificatore:"Matteo De Col", desc: "Piccola Modifica nella sezione ruoli"),
      (ver: "0.4.0", data: "2026-10-28", autore: "Thomas Morettin", ruolo: "Redattore", verificatore:"Matteo De Col", desc: "Aggiunta precisazione su funzionamento di generate-glossario.py in sottocapitolo 5.2; inserimento di sottocapitoli 5.3 e 5.3.1."),
      (ver: "0.3.1", data: "2026-10-28", autore: "Thomas Morettin", ruolo: "Redattore", verificatore:"Matteo De Col", desc: "Modifica in capitolo 4.1 su ruolo dell'amministratore e aggiunto appunto su data.js in capitolo 5.3."),
      (ver: "0.3.0", data: "2026-10-27", autore: "Thomas Morettin", ruolo: "Redattore", verificatore:"Matteo De Col", desc: "Aggiunta sezione: Gestione dei repository e sito web \"cruscotto\"."),
      (ver: "0.2.0", data: "2026-10-27", autore: "Samuele Gobbi", ruolo: "Redattore", verificatore:"Gianluca Bacco", desc: "Aggiunta sezione: Gestione documentale e Versionamento"),
      (ver: "0.1.0", data: "2026-10-27", autore: "Gianluca Brotto", ruolo: "Redattore", verificatore:"Matteo De Col", desc: "Aggiunta sezione: Gestione e Organizzazione dei Ruoli"),
      (ver: "0.0.3", data: "2026-10-26", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"Gianluca Bacco", desc: "Correzioni"),
      (ver: "0.0.2", data: "2026-10-26", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"Gianluca Bacco", desc: "Miglioramento impaginazione del documento"),
      (ver: "0.0.1", data: "2026-10-26", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"Gianluca Bacco", desc: "Stesura della bozza iniziale di documento."),
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

= Gestione documentale e Versionamento
  La documentazione è essenziale per garantire la tracciabilità e la coerenza di ogni azione o decisione presa dal team. Questa sezione descrive nel dettaglio le regole, le convenzioni e il sistema di versionamento adottati dal gruppo per la sua gestione. Trovandosi nelle fasi iniziali del progetto, questa sezione potrà essere soggetta a successivi aggiornamenti per integrare nuove metodologie e strumenti che il gruppo deciderà di adottare.
== Redazione documenti
  I documenti vengono redatti in #G("Typst", def: "Sistema di composizione tipografica open-source e linguaggio di markup progettato principalmente come alternativa moderna, semplice e veloce a LaTeX per la scrittura di testi scientifici, accademici, tesi di laurea e relazioni tecniche.") (.typ) e distribuiti in formato PDF (.pdf). Questi due formati sono stati scelti poiché:
  - Typst garantisce una stesura standardizzata e omogenea mediante l’utilizzo dei #G("Template", def: "Modello predefinito o struttura riutilizzabile dotata di un layout già pronto, in cui sono presenti spazi vuoti predisposti per essere riempiti con contenuti specifici."), inoltre il carattere programmatico del linguaggio permette di definire regole di formattazione nei documenti che aiutano ad automatizzare alcune procedure di scrittura.
  - Il formato PDF è ampiamente supportato da pressoché ogni dispositivo e di facile utilizzo.
  In particolare, i file .typ sono codice sorgente, modificabile e tracciabile, mentre i file .pdf sono la documentazione approvata, distribuita e ufficiale.
== Convenzioni di Nomenclatura
  - *Nome file*: Le cartelle della repository sono rinominate con iniziali del nome in lettera maiuscola; al contrario i file hanno nome che inizia con la lettera minuscola.
  - *Documenti*: Sia i verbali interni che esterni hanno come nome la data di quando è avvenuto l’incontro descritto al loro interno (es. “2026-10-11.typ”). I documenti che non sono verbali invece hanno nome tutto in minuscolo. Il carattere separatore per cartelle e documenti è “-” (ad esempio “valutazione-capitolati.typ”).
  - *Formato Date*: il formato è conforme allo standard ISO 8601 (YYYY-MM-DD).
== Fasi di vita di un documento
  - *Redazione*: costituisce la fase di scrittura del documento, gestita da uno o più redattori. Il processo di stesura è di tipo incrementale: per ogni modifica rilevante viene effettuata una commit, garantendo così la tracciabilità delle modifiche tramite il sistema di versionamento.
  - *Verifica*: a seguito di una commit è necessario effettuare la verifica del documento; questo compito è affidato ad una persona diversa dal redattore. Un documento risulta verificato quando tutte le modifiche nuove rispettano i seguenti requisiti:
    - aderenza alle norme e agli standard di progetto;
    - qualità formale, sintattica e lessicale;
    - correttezza e accuratezza dei contenuti.
  - *Approvazione*: i documenti del progetto necessitano di un ulteriore controllo qualità, successivo alla verifica, da parte del Responsabile di progetto. L’approvazione di un documento indica che tale documento soddisfa i requisiti di completezza e correttezza necessari e che di conseguenza è pronto per la pubblicazione.
  - *Pubblicazione*: a seguito dell’esito positivo delle fasi di verifica e approvazione, il documento viene ufficialmente convertito e inserito nell’archivio PDF del sito web del gruppo tramite il sistema di automazione (#G("CI (Continuous Integration)", def: "Pratica di sviluppo software in cui i membri di un team uniscono le modifiche al codice in un repository centrale il più frequentemente possibile, tipicamente più volte al giorno.")/#G("CD (Continuous Delivery)", def: "Pratica di sviluppo software in cui il codice modificato viene compilato, testato e preparato automaticamente per il rilascio in produzione. Rappresenta l'estensione naturale della Continuous Integration (CI).")) descritto nei paragrafi successivi.
== Struttura e tipologia dei documenti
  I documenti seguono un tipo di struttura coerente e uniforme per garantire leggibilità:
  - *#G("Frontespizio", def: "Pagina iniziale di un libro, di una tesi di laurea o di una pubblicazione, situata di norma all'inizio del volume, che contiene le informazioni essenziali per identificare l'opera.")*, con dati ufficiali;
  - *#G("Changelog", def: "Registro cronologico che elenca tutte le modifiche apportate a un progetto software. Il suo scopo principale è informare in modo chiaro e trasparente gli utenti, gli sviluppatori e i clienti su cosa sia effettivamente cambiato nel prodotto, facilitando la tracciabilità delle novità e la risoluzione di eventuali problemi.")*;
  - *Indice contenuti*;
  - *Corpo del documento*, suddiviso in paragrafi e sottoparagrafi;
  - *Sezione firme* (maggiori dettagli nel sottoparagrafo successivo).
  Inoltre, il gruppo dispone di template scritti in Typst per garantire la replicabilità degli elementi comuni a tutti i documenti.
  La struttura descritta è valida per l'intera documentazione, sebbene alcuni campi dati interni possano variare leggermente in base alla tipologia di appartenenza. Si possono quindi individuare tre categorie fondamentali:
=== Verbali 
  Questi documenti si occupano di descrivere accuratamente lo svolgimento di un incontro che può essere interno al gruppo oppure esterno con un’azienda. Sia i verbali interni che esterni vengono approvati ufficialmente dal responsabile di progetto ma riportano solo la firma del verificatore e, in caso di verbale esterno, anche la firma del referente aziendale. 
=== Documenti Generici 
  Sono documenti di varia natura (come il documento di valutazione capitolati, lettera di presentazione o questo delle norme di progetto). Questa tipologia di documenti presenta nella sezione firme unicamente la firma del responsabile che ne ha approvato la pubblicazione.
=== Glossario
 Raccolta in ordine alfabetico dei termini tecnici di progetto accompagnati dalla rispettiva definizione. I termini presenti nel Glossario sono contrassegnati nei vari documenti tramite la lettera (G) in pedice, la quale funge da collegamento ipertestuale verso la definizione corrispondente nel Glossario stesso. La lettera (G) viene applicata unicamente alla prima occorrenza di ciascun termine di glossario all'interno del singolo documento, al fine di garantire la leggibilità del testo ed evitare ridondanze visive.
 Data la sua natura soggetta a continuo aggiornamento, il Glossario segue un processo di manutenzione incrementale e non richiede l'approvazione individuale da parte del Responsabile di Progetto ad ogni singolo inserimento.

== Regole di Versionamento Documenti
I documenti vengono versionati seguendo lo standard di #G("Semantic Versioning", def: "Standard di versionamento in cui i numeri di versione indicano il livello di stabilità e le modifiche apportate al software."), dove la versione viene descritta da 3 numeri distinti con valenza definita dal seguente formato MAJOR.MINOR.PATCH, in particolare:
- *MAJOR*: indica lo stato di stabilità e approvazione del documento. Un valore inferiore a 1 (es. 0.y.z) indica un documento ancora instabile, in fase di redazione o verifica e soggetto a modifiche; un valore pari o superiore a 1 (es. 1.y.z) identifica un documento ufficialmente approvato dal Responsabile di Progetto e ritenuto conforme agli standard definiti in precedenza. 
- *MINOR*: viene incrementata a seguito dell'inserimento di nuovi contenuti o di modifiche sostanziali alla struttura e alle sezioni del documento (ad esempio l'aggiunta di nuovi paragrafi o capitoli).
- *PATCH*: viene incrementata in caso di interventi minori, quali la correzione di refusi, errori di battitura o piccole modifiche formali che non alterano la struttura o il contenuto informativo del documento.
Come definito dallo standard di semantic versioning, se viene incrementato un numero di versione è necessario che i numeri posti alla sua destra vengano tutti azzerati, come ad esempio un passaggio da 0.2.1 a 0.3.0 porta all’azzeramento del numero posto all’estrema destra.

= Gestione e Organizzazione dei Ruoli
== Ruoli e Responsabilità
Per ogni ruolo previsto vengono definite le specifiche responsabilità:

- *Responsabile*:
  - Guida il team, assicurando l’allineamento alle tempistiche e al metodo di lavoro stabilito.
  - Gestisce tutte le relazioni e comunicazioni con l'azienda Proponente e i Committenti. 
  - Redige ed espone i Diari di Bordo settimanali.
  - Approva ufficialmente la documentazione prodotta prima del rilascio formale. 
  - Pianifica le attività all'inizio di ogni sprint e assegna i relativi task ai membri.

- *Amministratore*:
  - Gestisce e mantiene l’ambiente di lavoro (repository, strumenti di comunicazione, issue tracking system). 
  - Implementa e fa manutenzione delle automazioni di progetto, come le pipeline di #G("CI (Continuous Integration)")/#G("Continuous Delivery") (CI/CD) e la compilazione automatica dei documenti. 
  - Risolve tempestivamente i problemi tecnici e i malfunzionamenti legati agli strumenti in uso al team. 
  - Aggiorna la rendicontazione delle ore all'interno del sito web, oltre ad eventuali informazioni.
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

Il gruppo adotta un'organizzazione basata sulla rotazione periodica dei ruoli, articolata in cicli operativi denominati sprint della durata fissa di due settimane. Tale approccio assicura che ogni membro acquisisca esperienza in tutti gli ambiti del progetto.

La rotazione avviene all'inizio di ogni sprint, quindi ogni due settimane: in tale occasione il Responsabile assegna a ciascun membro il ruolo che ricoprirà nello sprint successivo. Tale cadenza permette a ogni membro di svolgere un ruolo per un periodo sufficientemente lungo da comprenderne a fondo le attività, riducendo i tempi di chiarimento e le difficoltà di apprendimento. L'assegnazione tiene conto sia della natura del lavoro previsto per lo sprint, sia dei ruoli già ricoperti da ciascun membro, in modo da garantire che ognuno svolga tutti i ruoli previsti almeno una volta nel corso dell'intero progetto.

Al termine di ogni sprint, il membro uscente da un ruolo comuica le attività svolte e, nella fase iniziale dello sprint successivo, fornisce supporto al subentrante per chiarire eventuali dubbi e rendere l'inserimento al nuovo ruolo il più veloce possibile. 

= Gestione dei repository e sito web "cruscotto"
Nel seguente capitolo si riportano le scelte progettuali circa la gestione dei repository all'interno dell'organizzazione e com'è strutturato il sito web "cruscotto" (#link("https://team-astrum.github.io")[team-astrum.github.io]).

== Ambiente di lavoro
Il tracciamento delle modifiche e il versionamento del codice sono gestiti tramite #G("Git", def: "Applicazione software per il controllo di versione distribuito utilizzabile da interfaccia a riga di comando."), appoggiandosi alla piattaforma cloud GitHub. 
Il gruppo ha creato un’organizzazione sulla piattaforma #G("GitHub", def: "Piattaforma online basata sul cloud e sul sistema di controllo di versione Git; permette agli sviluppatori di archiviare, gestire, condividere e collaborare alla scrittura di codice sorgente.") per avere una gestione centralizzata di tutte le risorse.
L’infrastruttura è stata concepita applicando il principio di separazione delle responsabilità (Separation of Concerns), in quanto il lavoro viene suddiviso nei seguenti repository principali, ai quali se ne aggiungeranno di nuovi in base all’avanzamento del progetto:
- *Documentazione*, dedicato alla stesura, revisione e archiviazione di documenti di progetto; per la redazione dei file sorgenti si è scelto #G("Typst"), un linguaggio di markup moderno e flessibile, superando i limiti del tradizionale Latex; all’interno del repository, inoltre, si è deciso di ospitare i template, sempre in linguaggio #G("Typst"), per una redazione uniforme di tutti gli artefatti (verbali interni/esterni, documentazione interna/esterna, carta intestata e diapositive per i “diari di bordo”);
- *team-astrum.github.io*, dedicato all’hosting del sito web “cruscotto” tramite il servizio di #G("GitHub Pages", def: "Servizio gratuito offerto da GitHub che consente di pubblicare e ospitare siti web statici direttamente da un repository."); questo sito è fondamentale come punto di accesso pubblico per gli #G("stakeholders"), con visualizzazione grafica dello stato di avanzamento del progetto e link diretti ai documenti; per la sua gestione ordinaria si adotterà un flusso di lavoro basato su #G("PR (Pull Request)", def: "Operazione utilizzata nell'ambito dello sviluppo software per proporre modifiche al codice di progetto."), permettendo di convalidare le modifiche effettuate prima di effettuare la pubblicazione del sito web, senza invalidare le informazioni o la navigazione per gli #G("stakeholders");
- *.github*, utilizzato principalmente per configurare l’aspetto dell’organizzazione sulla piattaforma #G("GitHub").

== Automatismi di #G("CI (Continuous Integration)")
Per minimizzare l’errore umano e ottimizzare le fasi di build e rilascio, il team si avvale delle #G("GitHub Actions", def: "Piattaforma di automazione nativa integrata su GitHub che consente di creare flussi di lavoro per compilare, testare, analizzare e distribuire codice direttamente all'interno del proprio repository.") per implementare pratiche di #G("CI (Continuous Integration)"). Nello specifico sono presenti i seguenti automatismi:
- compilazione automatica dei documenti (“_Documentazione/typst-compile.yml_”): questo workflow, scritto in linguaggio #G("YAML", def: "Linguaggio di serializzazione dei dati leggibile dagli esseri umani, usato per file di configurazione, automazioni e strumenti DevOps.") si innesca all’apertura di una #G("PR (Pull Request)"); intercetta tutti i documenti in linguaggio #G("Typst"), fatta esclusione dei template di progetto, e li compila per verificarne l'integrità nel codice; l’automatismo permette di visualizzare eventuali errori in fase di compilazione; successivamente all'accettazione della #G("PR (Pull Request)") il file in linguaggio #G("Typst") viene compilato in formato PDF e viene rilasciato come artefatto all'interno delle #G("GitHub Pages") del repository; al momento della pubblicazione degli artefatti viene eseguito il file _generate-manifest.py_, scritto in linguaggio #G("Python", def: "Linguaggio di programmazione ad alto livello, interpretato, orientato agli oggetti e di uso generale."), che permette di generare un file _manifest.json_, scritto in formato #G("JSON (JavaScript Object Notation)", def: "Formato di testo leggero e aperto, utilizzato principalmente per lo scambio di dati tra applicazioni e server web."), per la serializzazione dei dati di tutti i documenti/verbali, fondamentali per attuare il ciclo di #G("CD (Continuous Delivery)") dei documenti all'interno del sito web "cruscotto" in modo automatizzato; inoltre, la action automatizza il processo di compilazione del file _glossario.pdf_ tramite il file in #G("Python") _generate-glossario.py_, spiegato nel sottocapitolo successivo;
- compilazione e pubblicazione del sito web "cruscotto" ("_team-astrum.github.io/site-compile.typ_"), utilizzato per la compilazione e la pubblicazione all'interno di #G("GitHub Pages") nel repository apposito.

== Automazione per file _glossario.pdf_
Si è deciso di automatizzare il processo di compilazione del glossario, documento fondamentale per la comprensione, da parte degli #G("stakeholders"), del dominio di progetto.\
Per il redattore del documento, quando inserisce un termine che deve essere riportato nel glossario, è sufficiente scrivere all'interno del codice #G("Typst") del documento il seguente comando: `#G("<termine>", def: "<definizione>")`. Il comando viene interpretato dalla funzione scritta nel file _g-func.typ_ per proporre a livello grafico una "G" a pedice con link di collegamento al file _glossario.pdf_.\
Il meccanismo di automazione avviene all'interno del file _generate-glossario.py_, il quale avvia, alla compilazione di tutti i documenti #G("Typst"), una ricerca di questi comandi, estrapolando così termine e corrispondente definizione. Tutte queste coppie chiave-valore vengono riordinate in ordine alfabetico di termine, per poi essere scritte all'interno di un file _glossario.typ_ che viene immediatamente pubblicato in formato PDF nella #G("root", def: "Livello più alto e iniziale della struttura gerarchica di un file system, da cui partono tutte le altre cartelle/sottocartelle.") del repository *Documentazione*.\
Nel caso in cui la definizione sia già stata riportata in un qualsiasi documento da un altro redattore, ma si vuole indicare che il termine è presente nel glossario, è possibile utilizzare il comando nel formato seguente: `#G("<termine>")`.\
I controlli effettuati dallo script in #G("Python") sono i seguenti:
- controllo sui duplicati case-insensitive: i termini vengono inseriti solamente una volta all'interno del file;
- controllo sui duplicati con definizioni differenti: viene pubblicata, all'interno del glossario, l'ultima definizione rinvenuta dallo script all'interno dei documenti.

=== Convenzioni di nomenclatura
Al fine di ridurre il più possibile gli errori all'interno del glossario si faccia riferimento alle seguenti convenzioni di nomenclatura:
- tutti i termini che presentano un acronimo/sigla devono essere scritti nella seguente convenzione: `<acronimo/sigla> (<parole>)`; è obbligatorio che le lettere che compongono l'acronimo/sigla siano in maiuscolo (fatta eccezione per lettere che rappresentano parole di congiunzione, e.g. PoC), valido anche per le iniziali delle parole che lo compongono;
- tutti i termini che non presentano un acronimo devono essere scritti in formato esteso (e.g. Design pattern), dove le prime lettere delle parole vengono scritte in maiuscolo solo nel caso in cui si ritenga necessario (e.g. Way of Working);
- per quanto riguarda la prima lettera di ciascun termine è indifferente che venga scritta maiuscola o minuscola (nel caso venisse ritenuto indifferente in fase di redazione) poiché la fase di compilazione automatica si occupa del rendering dei termini nel file _glossario.pdf_.

== Sito web "cruscotto" e #G("CD (Continuous Delivery)") automatizzato
Per la realizzazione della vetrina pubblica si è scelto di sviluppare una #G("Single Page Application", def: "Sito o applicazione web che carica un'unica pagina HTML iniziale e aggiorna dinamicamente i contenuti man mano che l'utente interagisce con essa, senza mai ricaricare interamente la pagina dal server.") utilizzando la libreria #G("React", def: "libreria JavaScript open-source creata da Meta per sviluppare interfacce utente dinamiche e modulari.") per la strutturazione dell'interfaccia (UI) e #G("Tailwind CSS", def: "") per il livello di presentazione e design.
Il sito web è punto di riferimento per gli #G("stakeholders") di progetto, dandogli la possibilità di visualizzare tutte le informazioni a loro necessarie.\
Come anticipato il sito web lavora con un processo di #G("CD (Continuous Delivery)") automatico, grazie alla lettura, ad ogni caricamento della #G("Single Page Application"), del file _manifest.json_.\
Per quanto concerne l'aggiornamento della rendicontazione oraria dei vari componenti e ruoli è possibile effettuare le modifiche all'interno del file _data.js_, il quale gestisce tutti i dati visualizzati all'interno del sito web (sia statici che dinamici).
Il sito, come citato precedentemente, è inserito all’interno del repository *team-astrum.github.io* (per la costruzione di un #G("URL (Uniform Resource Locator)", def: "Sequenza di caratteri che si digita nella barra degli indirizzi di un browser per identificare e raggiungere in modo univoco una risorsa su internet.") pulito).
Per concludere, il sito web "cruscotto" è suddiviso nelle seguenti sezioni consultabili:
- *#G("dashboard", def: "Interfaccia grafica che raccoglie, organizza e mostra i dati più importanti in modo sintetico e visivo.")* per visualizzare lo stato di avanzamento del progetto con relativi costi, integrata anche con la rendicontazione delle ore per ciascun membro e ruolo;
- *documenti*, contenente tutti i documenti/verbali caricati automaticamente, tramite il processo sopra descritto, dal repository *Documentazione*; questa sezione comprende anche la visualizzazione di documenti generali come _glossario.pdf_ e _norme-di-progetto.pdf_, i quali non appartengono ad una milestone predefinita ma fanno parte nel progetto nel suo complesso;
- *membri del team*, per dare visibilità agli artefici del complesso lavoro dietro al progetto universitario.