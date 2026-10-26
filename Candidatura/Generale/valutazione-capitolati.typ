#import "../../Template/tmp-documentazione.typ": conf, usecase
#import "../../Template/g-func.typ": G

#show: conf.with(
  titolo: "Valutazione capitolati",
  status: "Approvato", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Gianluca Bacco", "Corrado Bacco"),
  verifica: ("Thomas Morettin", "Gianluca Brotto"),
  approvazione: "Filippo De Guio",
  changelog: (
    (ver: "1.0.0", data: "2026-10-26", autore: "Filippo De Guio", ruolo: "Responsabile", desc: "Approvazione del documento."),
    (ver: "0.2.0", data: "2026-10-26", autore: "Corrado Bacco", ruolo: "Redattore", verificatore:"Gianluca Brotto", desc: "Stesura finale del documento."),
    (ver: "0.1.0", data: "2026-10-26", autore: "Gianluca Bacco", ruolo: "Redattore", verificatore:"Gianluca Brotto", desc: "Stesura iniziale del documento."),
    (ver: "0.0.1", data: "2026-10-26", autore: "Gianluca Bacco", ruolo: "Redattore", verificatore:"Thomas Morettin", desc: "Stesura della bozza inziale di documento.")
  )
)

// --- INIZIO CONTENUTO DEL DOCUMENTO ---

= Introduzione
Il presente documento ha lo scopo di evidenziare le valutazioni, da parte del gruppo Astrum, di ciascun capitolato presentato nella Presentazione dei Capitolati di Appalto in data 13 ottobre 2026. Questa valutazione ha permesso di motivare la scelta del gruppo di presentare la candidatura per il capitolato C0: AIRA - AI Request Automation proposto da Sanmarco Informatica S.p.A.


= Valutazione dei capitolati
Per ciascun capitolato verranno riportati di seguito: una breve descrizione, la valutazione del gruppo e le motivazioni per cui il gruppo ha scelto di procedere o meno con la candidatura per tale capitolato.

Il #G("gruppo", def: "l'insieme di persone che compongono il team di sviluppo") ha scelto di candidarsi per il capitolato C0. Questa scelta è avvenuta attraverso una votazione in cui ogni membro ha espresso le proprie preferenze in merito ai capitolati proposti.

Nonostante questo capitolato non fosse la preferenza iniziale assoluta di tutti i membri, si è optato per esso a seguito di un’attenta analisi delle preferenze complessive e della disponibilità dei progetti. In base alla graduatoria interna definita dal gruppo, sono stati considerati anche altri capitolati come “seconde e terze scelte” in caso di indisponibilità della prima opzione.

== C0: AIRA - AI Request Automation (Sanmarco Informatica S.p.A.)

Il capitolato C0 proposto da Sanmarco Informatica S.p.A. prevede lo sviluppo di AIRA (AI Requests Automation), un tool multimodale basato su intelligenza artificiale per l’automazione della gestione delle richieste in ambito B2B.
L'obiettivo principale è risolvere la frammentazione delle informazioni che arrivano da canali eterogenei, convertendole in dati strutturati e inoltrandole in modo automatico ai sistemi aziendali, riducendo gli interventi manuali e il rischio di errori.
Il progetto richiede un’architettura strutturata su più componenti principali:
- Acquisizione ed estrazione: monitoraggio continuo dei canali d’ingresso, con speech-to-text per l’audio e OCR e visione artificiale per immagini e documenti scansionati.
- Filtro sicurezza e AI Engine: isolamento dei dati e identificazione del tenant, seguiti da interpretazione semantica, identificazione di entità e strutturazione dei dati tramite LLM.
- Integrazione e amministrazione: chiamate API REST verso ERP, CRM, B2B e ticketing, invio di notifiche e-mail e interfaccia web amministrativa per canali, log e persistenza dei dati.

Le tecnologie suggerite sono Java con Spring Boot per il motore di elaborazione, LangChain4j per l’orchestrazione degli LLM, Whisper, Tesseract ed EasyOCR per speech-to-text e OCR, SQLite, MariaDB o PostgreSQL per la persistenza e Angular con TypeScript per il frontend.
Il gruppo ha identificato questo progetto come prima scelta in quanto presenta un caso d’uso concreto e di forte attualità, oltre al comune interesse di lavorare su un progetto basato sull’integrazione di strumenti e servizi legati all’intelligenza artificiale.
L’esposizione dei requisiti è risultata chiara e ben organizzata, con una distinzione netta tra funzionalità obbligatorie e opzionali. L’insieme di tecnologie è diffuso e ben documentato.
Infine, la disponibilità dell’azienda a fornire supporto e assistenza in breve tempo è stata ritenuta un valore aggiunto per la buona riuscita del progetto.

==  C1: AURA, AI for Understanding, Reasoning and Automation (Vimar S.p.A.)

Il capitolato C1 proposto da Vimar S.p.A. prevede lo sviluppo di un server basato su protocollo MCP (Model Context Protocol) per permettere l’interazione tra la domotica casalinga dell’utente con il proprio agente di Intelligenza Artificiale preferito (es. ChatGPT, Claude, …). Il progetto si basa sull’integrazione tra software e hardware (fornito dall’azienda proponente), rendendo così necessaria la comprensione del funzionamento di apparecchi prodotti nell’ambito della domotica.
Il progetto richiede di sviluppare un’architettura a container, che preveda un’autenticazione di tipo OAuth2, ospitata su Cloud AWS. Il progetto deve pertanto permettere l’autenticazione dell’utente, leggere lo stato delle componenti domotiche e far comunicare l’agente IA con l’utilizzatore finale.
Nonostante un primo riscontro positivo da parte del team circa l’interesse verso le tecnologie richieste e l’idea dietro al progetto (considerando il lavoro come una possibile terza scelta in un elenco di migliori proposte), in un secondo incontro si è deciso di non approfondire un incontro con l’azienda proponente, prendendo in considerazione i seguenti rischi legati alla progettazione:
- lavorare con componentistica hardware introduce possibili incognite circa errori di rete (es. disconnessioni del gateway, ritardi nella propagazione del segnale, …) che risulterebbero complessi da gestire in fase di programmazione, introducendo possibili ritardi nella consegna del lavoro;
- lo studio del protocollo MCP, ideato da Anthropic, rischierebbe di posticipare notevolmente la fase di inizio programmazione in quanto, essendo un protocollo di nuova generazione e con una documentazione si pensa “acerba”, porterebbe il gruppo a preventivare delle tempistiche incerte;
- l’implementazione dell’autenticazione di tipo OAuth2, facendo uso di tecnologie non ancora toccate da nessun membro del gruppo, potrebbe portare a ritardi nella consegna del progetto se non implementata correttamente sin da subito.

== C2: Concierge (Eggon Group S.p.A.)

Il capitolato C2 (NEXUM Concierge) proposto da Eggon S.r.l. prevede lo sviluppo di un assistente conversazionale multimodale basato su Intelligenza Artificiale, integrato nella PWA della piattaforma NEXUM per la gestione dei servizi e dei processi HR. Nello specifico, la richiesta riguarda la realizzazione di un MVP focalizzato sul dominio applicativo di ferie e permessi, in grado di combinare quattro capacità fondamentali nello stesso contesto di dialogo:

- Conoscenza aziendale e del prodotto: un motore basato su architettura RAG in grado di rispondere a quesiti sui regolamenti aziendali (caricati e gestiti tramite un back office dedicato) e di fornire istruzioni d'uso del software attingendo dai manuali NEXUM, garantendo la citazione delle fonti, la tracciabilità e la capacità di astensione in caso di informazioni insufficienti o contrastanti.

- Consultazione dati e registrazione operazioni: l'integrazione di abilità (gate) per accedere ai dati personali dell'utente autenticato (consultazione del saldo e dello storico di ferie/permessi tramite API) e per l'esecuzione guidata di azioni operative (registrazione delle richieste con riepilogo completo, gestione delle ambiguità temporali, richiesta di conferma esplicita dell'utente e tracciabilità dell'esito).

Il progetto prevede inoltre specifici deliverable e vincoli qualitativi, tra cui un’architettura modulare ed estendibile a futuri domini HR, il rispetto dei controlli di sicurezza e multi-tenancy/isolamento aziendale, la realizzazione di un PoC intermedio (Fase 1), il raggiungimento di una copertura di test di unità e integrazione e la consegna di un MVP end-to-end integrato con servizi reali o simulati conformi al contratto di integrazione.

Questo capitolato rappresentava una delle opzioni prese in considerazione dal gruppo per l'interesse verso l'integrazione tra modelli generativi (RAG) e sistemi gestionali operativi (Tool Use/Gate); si è deciso però di non procedere con la candidatura. Le ragioni principali risiedono nell'elevata complessità architetturale richiesta dall'integrazione contemporanea di quattro diverse capacità nello stesso flusso conversazionale e nei potenziali rischi legati alla forte dipendenza dai contratti di integrazione e dalle API del gestionale NEXUM.

== C3: Fossdot: Smart Speaker Open Source estensibile e rispettoso della privacy (Uranion  Emea LTD)

Il capitolato C3, proposto da Uranion Emea LTD, prevede lo sviluppo di un ecosistema open source completo volto a coprire l’intera catena del valore di uno smart speaker: dalla progettazione dell'hardware e del firmware fino al servizio di back-end e all'interfaccia di gestione. Gli obiettivi principali del progetto sono la garanzia della privacy dell'utente, l’estensibilità al di fuori dei vincoli dell'ecosistema del produttore e la libertà di scelta del provider di intelligenza artificiale.
L'architettura del sistema si articola in quattro componenti principali:

- Selezione dell'Hardware: Scelta e integrazione della scheda di elaborazione, dell'array di microfoni e dei componenti periferici.
- Firmware Embedded: Sviluppo del software di basso livello per la gestione dell'I/O audio e il rilevamento locale della wake word.
- Servizio Server di Bridging: Implementazione del back-end di interconnessione tra i provider di intelligenza artificiale e i servizi di integrazione, consentendo la configurazione e la sostituzione dinamica del provider AI.
- Interfaccia di Gestione Dispositivi: Applicazione multi-dispositivo per la registrazione degli smart speaker, l'associazione agli account utente, la configurazione dei servizi e il controllo dell'interconnessione.

Sebbene il proponente non impone uno stack tecnologico rigido, richiedendo tuttavia il rilascio dell'intero progetto come open source con licenza permissiva, vengono suggerite alcune tecnologie di riferimento :
- Embedded e Firmware: Rust embedded, framework asincrono Embassy e hardware Raspberry Pi.
- Elaborazione Audio e Voce: Seeed ReSpeaker, openWakeWord, Silero VAD, faster-whisper (STT) e Piper (TTS).
- Intelligenza Artificiale e Rete: Ollama (per l'esecuzione locale di LLM), Model Context Protocol (MCP), framework Axum/Tokio e l'assistente vocale Willow. Nonostante l’elevato valore tecnico, innovativo e formativo del progetto, l’analisi di fattibilità preliminare ha evidenziato criticità rilevanti connesse alla complessità dell'architettura e alla forte eterogeneità dello stack tecnologico. In particolare, la limitata esperienza del gruppo nella programmazione embedded comporterebbe una curva di apprendimento estremamente ripida e un rischio elevato nella pianificazione temporale .Per tali ragioni, pur riconoscendo l'eccellenza e l'interesse del capitolato, il gruppo ha deciso di non candidarsi al capitolato C3.

== C4: Gestione dei Veicoli e Servizi Post-Vendita (M31 S.r.l.)
 
 Il capitolato C4 proposto da M31 S.r.l. prevede lo sviluppo di una piattaforma software distribuita con gestione logicamente centralizzata delle informazioni nel settore automotive.
L’obiettivo principale è risolvere la frammentazione dei dati tra le diverse parti coinvolte nel ciclo di vita di un veicolo, permettendo di migliorare la collaborazione e offrendo un punto di accesso unificato per la gestione di manutenzioni, appuntamenti e campagne di richiamo.
Il progetto richiede un’architettura strutturata su tre livelli principali:
- Central Management Layer (Casa Automobilistica): per la gestione di modelli, di veicoli, concessionarie e campagne di richiamo.
- Operations Layer (Concessionaria e Centro di Assistenza): focalizzato sulle operazione di vendita, gestione dei proprietari, manutenzioni e appuntamenti
- Customer & Vehicle Service Layer (Proprietario): pensato per offrire all’utente finale la consultazione dei propri veicoli,  per l’invio di richieste di manutenzione, e per la ricezione di notifiche. Le tecnologie suggerite si basano su un'architettura a microservizi orchestrata tramite Kubernetes. Per il backend vengono suggeriti Go , Typescript  e Node.js (con framework Nest.js) e NATS per la comunicazione tra i vari servizi. Per la persistenza e gestione dei dati viene suggerito PostgreSQL, MongoDB e Redis. Per il frontend viene consigliato Angular.

Sebbene il progetto presenti un caso d’uso interessante e concreto nel settore automotive, si è deciso di non candidarsi al capitolato.
L’esposizione dei requisiti è risultata meno dettagliata rispetto alle altre proposte, inoltre, a orientare la scelta verso altri capitolati, è stata la volontà del gruppo di lavorare in un progetto basato sull’integrazione di strumenti e servizi legati all’Intelligenza Artificiale.

== C5: RareCare: Piattaforma AI per la raccolta dati e il supporto decisionale nelle malattie rare (Miriade S.r.l)

Il capitolato C5, proposto da Miriade S.r.l prevede lo sviluppo di RareCare Navigator, una piattaforma digitale dotata di un assistente virtuale basata su Intelligenza Artificiale.
L’obiettivo del progetto è supportare la gestione di malattie rare e complesse, focalizzandosi inizialmente sulla Sindrome di Sanfilippo.
L’obiettivo principale è sollevare le famiglie dal carico organizzativo e dal senso di isolamento, creando un centro di coordinamento digitale capace di interconnettere tutti gli attori della rete di cura: centri clinici di riferimento, pediatri, istituzioni scolastiche e servizi socio-assistenziali. 
Il Progetto richiede lo sviluppo di tre funzionalità principali:
- Modello di gestione dei permessi (RBAC): un controllo degli accessi per garantire la riservatezza e visibilità dei dati in base al ruolo dell’utente.
- Motore di Workflow: un sistema per tracciare attività e gestire scadenze con l’invio di notifiche
- Interfaccia Conversazionale RAG: un chatbot in grado di rispondere a quesiti specifici su procedure amministrative e di supporto basandosi solo su fonti ufficiali e verificate
Per il frontend viene raccomandato lo sviluppo di una piattaforma cross-platform tramite Flutter o React Native, supportata da un backend basato su un’architettura Cloud Native e Serverless ( come AWS Lambda e API Gateway) per garantire la massima scalabilità.
Per quanto riguarda la parte di AI e LLM, l’integrazione è affidata a servizi gestiti quali Amazon Bedrock, le API di OpenAI, oppure a modelli open source tramite HuggingFace.
Inoltre, trattando informazioni sanitarie sensibili, l’intera gestione dei dati richiede elevati standard di sicurezza, viene prevista infatti una cifratura end-to-end dei dati sanitari sia in transito (TLS)  che a riposo (AES-256).
Il gruppo ha valutato positivamente l’idea alla base del progetto, apprezzando il concreto impatto sociale. Ha inoltre apprezzato la formazione iniziale sul dominio clinico e sulle malattie rare offerta da Miriade, insieme al supporto tecnico previsto durante lo sviluppo. 
Tuttavia, il gruppo ha deciso di non candidarsi, principalmente per la complessità del progetto: la piattaforma deve gestire dati sanitari molto delicati e richiede competenze in ambiti diversi, come lo sviluppo di app multipiattaforma, le architetture cloud serverless e i sistemi RAG. 
Ciò avrebbe comportato un carico di studio molto elevato e una stima poco affidabile di costi e tempi.

== C6: Sistema AI di catching semantico e dashboard FinOps (VarGroup S.p.A)

Il progetto proposto da VarGroup S.p.A. nel capitolato C6 prevede lo sviluppo di un sistema di Caching Semantico e Dashboard FinOps. Nello specifico, la richiesta riguarda l'estensione delle funzionalità del proxy/orchestratore open source LiteLLM (già utilizzato in produzione dall'azienda) tramite due componenti originali ideate per colmare i suoi attuali limiti critici in contesto aziendale:

- Caching semantico: un layer di cache basato su embedding e similarity search. È in grado di riconoscere query semanticamente simili, restituire direttamente la risposta memorizzata e tracciare/loggare token e latenza risparmiati. Il sistema prevede una soglia di similarità configurabile, meccanismi di invalidazione basati su TTL e versioning, e la persistenza su Redis o vector database (es. Qdrant o pgvector).   

- Dashboard FinOps: un servizio separato orientato alla gestione del budget e alla visibilità dei costi, che aggrega i consumi per team, progetto o utente. Calcola il risparmio effettivo generato dal caching semantico, gestisce soglie di budget con relativi alert ed esegue il forecasting della spesa mensile stimata. Garantisce aggiornamenti near real-time, architettura multi-tenancy e isolamento dei dati per ciascun team.   Il progetto prevede inoltre specifici deliverable e vincoli qualitativi, tra cui un’architettura modulare ed estendibile, una copertura di test automatici, l'esecuzione di una sessione preliminare di Design Thinking e User Story Mapping, un PoC di fattibilità e la realizzazione di un MVP end-to-end completo di documentazione ADR e diagrammi UML.   

Questo capitolato rappresentava inizialmente la prima scelta del gruppo per l'interesse verso le tecnologie richieste e l'idea progettuale, si è deciso però di non procedere con la candidatura. Le ragioni principali risiedono nel rischio di un'elevata concorrenza (competizione con altri tre gruppi per un solo posto disponibile) e nel riscontro piuttosto tardivo ricevuto dall'azienda a seguito di una nostra richiesta di incontro. 

Nonostante ciò, seguendo la votazione interna al gruppo, si è deciso di mantenere questo capitolato come “terza scelta” in caso di rifiuto della candidatura presentata.

==  C7 Smart Dashboard: Piattaforma di Business Intelligence potenziata da AI (Ergon Informatica S.r.l.)

Il capitolato C7 proposto da ERGON S.r.l richiede di sviluppare una SmartDashboard, cioè una piattaforma di business end-to-end che gestisce l’intera lifetime di un dato aziendale partendo dal suo recupero dal gestionale dell’azienda al suo consolidamento in un archivio per l’analisi, fino all’inserimento in una dashboard navigabile dall’utente finale. La dashboard usata dall’utente deve inoltre essere personalizzabile tramite modalità drag & drop e integrare un layer di intelligenza artificiale che garantisce due funzionalità:
- Abbattere la barriera tecnica permettendo all’utente finale di ottenere un grafico di andamento basato sulla descrizione in linguaggio naturale dell’utente stesso senza richiesta di tecnicismi
- Arricchire l’esperienza analitica con l’interpretazione automatica dei dati, usando un sistema di segnalazione di eventuali anomalie/tendenze riconoscibili con annessa spiegazione coerente dell’evento.
L’azienda nel capitolato suggerisce di adottare uno sviluppo concentrato su diversi livelli quali:
+ Raw Data Store: Raccoglie una copia storicizzata dei dati grezzi originanti dal Enterprise Resource Planning (ERP), implementato tramite PostgreSQL, MySQL o MariaDB e la raccolta dei dati può essere gestita tramite comunicazione di componenti in formato di scambio supportato (come JSON)
+ Data Warehouse: Un livello che si occupa di trasformare i dati grezzi in dati ottimizzati per l’analisi, implementato con DuckDB
+ Web App: Comprende il backend che interroga il data warehouse e mette in esposizione i dati tramite API e il frontend che contiene il costruttore di dashboard oltre che il pannello dell’assistente AI. Il frontend viene implementato con React, Angular o Vue e la comunicazione tra front e back end avviene tramite API garantendo un controllo sull’esposizione dei dati senza rendere accessibili al frontend le interrogazioni dirette al livello dati.
Il layer dell’intelligenza artificiale deve invece avere diverse capacità; tra queste, la più importante è la generazione di visualizzazioni in linguaggio naturale, che permette all’utente di descrivere un grafico desiderato e di visualizzare la risposta generata in automatico dal sistema. L’assistente AI inoltre deve agire unicamente sui dati della piattaforma e deve implementare opportuni controlli di coerenza; per mantenere questo grado di qualità l’azienda consiglia di fare ricorso ad un LLM esposto tramite API commerciale (come GPT o Claude).
Il gruppo ha scelto di non perseguire questo capitolato poiché, pur riconoscendone l'elevato valore formativo e la solidità dell'architettura proposta, le tecnologie e il dominio applicativo (Business Intelligence ed ETL) risultano meno in linea con gli argomenti che il gruppo desidera approfondire.

== C8: Sonar: Documentazione vivente di uno store Shopify (Halue S.r.l)

Il capitolato C8 proposto da Halue S.r.l. prevede lo sviluppo di un analizzatore, eventualmente con l’utilizzo di un agente di Intelligenza Artificiale, che permetta di scansionare i negozi di livello Enterprise sviluppati tramite piattaforma Shopify. Il sistema deve essere in grado di:
-scaricare configurazioni, app e temi del negozio in esame;
-creare un grafo delle dipendenze tra tutti gli elementi scaricati e scansionati al passo precedente;
-rilevare all’interno del grafo il “codice morto”, ovvero tutti quegli elementi ormai in disuso che sono rimasti all’interno della pagina per dimenticanza o mancato aggiornamento del negozio.
Lo stack tecnologico proposto dall’azienda è moderno e richiede l’utilizzo di:
- Vercel come piattaforma cloud per lo sviluppo/distribuzione di applicazioni web;
- Next.js come framework React proprietario di Vercel;
- Supabase come servizio di hosting per un database orchestrato con PostgreSQL (ORDBMS, Object-Relational Database Management System);
- TypeScript come linguaggio di programmazione di proprietà Microsoft.
Alla luce di un’analisi approfondita da parte del gruppo, conseguente anche ad un colloquio conoscitivo con il responsabile aziendale Valentino Baraldo, si è deciso di posizionare il presente progetto come seconda scelta. Questa decisione è motivata dai seguenti aspetti di rilievo:
- il capitolato che descrive la richiesta è ben formulato, completo di tutte le richieste aziendali; eventuali dubbi da parte del gruppo sono stati chiariti con onestà e comprensione da parte del responsabile all’interno del colloquio conoscitivo datato 19/10/2026;
- la proposta è interessante, sia per quanto concerne lo stack tecnologico che per l’ambito applicativo, considerando che molti clienti business si affidano alla piattaforma Shopify per la creazione del proprio e-commerce;
- disponibilità da parte dell’azienda proponente di organizzare incontri formativi per l’illustrazione di materiale utile allo studio, fornito in primo luogo per uno studio individuale da parte del gruppo.

Il progetto qui presentato non ricopre comunque la prima scelta, questo perché sono stati evidenziati i seguenti aspetti critici:
- la necessità di formazione su un ecosistema specifico come Vercel si pensa debba essere correlata ad un ampio studio dell’applicativo, richiedendo al gruppo un importante dispiego di risorse nella fase di studio delle tecnologie;
- L'interazione tra l'applicativo Sonar e la piattaforma Shopify espone il progetto al rischio di errori di tipo “Too Many Requests”. La mitigazione di questa criticità in fase di sviluppo richiederebbe interventi correttivi in corso d'opera, con conseguenti slittamenti dei tempi di consegna e un'iniziale sottostima economica del preventivo. 
- Il tempo necessario per studiare le API della piattaforma e il linguaggio di template Liquid, unito all'attività di selezione dei componenti realmente funzionali al progetto, comporterebbe un carico di lavoro iniziale particolarmente elevato. 
- l’azienda proponente, nonostante un capitolato completo e ben posto, si è dimostrata dubbiosa circa la fattibilità di alcuni requisiti obbligatori e desiderabili, portando il gruppo a valutare un approccio cautelativo circa la proposta di un MVP completo e ben strutturato per il termine del progetto.

== C9: SpecCheck: Skills OpenCode per tracciabilità tra casi d’uso, requisiti e codice sorgente (Zucchetti S.p.A.)

Il capitolato C9 (SpecCheck), proposto da Zucchetti S.p.A., richiede di sviluppare un pacchetto integrato di estensioni (skill, tool, command e un plugin per la dashboard) per il sistema di gestione del contesto OpenCode. L'obiettivo principale è garantire la tracciabilità end-to-end all'interno del ciclo di vita del software, verificando la coerenza tra:
- Casi d'uso e Requisiti: analisi sintattica e semantica dei diagrammi (in formati quali Mermaid o XMI) e della documentazione testuale per confermare che ogni caso d'uso sia correttamente recepito nelle specifiche dei requisiti.
- Requisiti e Codice Sorgente: verifica del codice sorgente tramite modelli LLM per accertare che l'effettiva implementazione software rispetti le funzionalità descritte nei requisiti e nei casi d'uso iniziali.
Il sistema non ha lo scopo di generare codice, ma di ottimizzare la fase di verifica automatizzata della tracciabilità. Viene richiesta una particolare attenzione alla segnalazione delle discrepanze, da evidenziare tramite un'interfaccia/dashboard (TUI o grafica). L'azienda non impone stack tecnologici rigidi per l'implementazione della logica di analisi, ma fornisce riferimenti ad architetture esistenti (come OpenSpec o SuperPowers) e raccomanda l'uso di pattern architetturali robusti e coperti da test automatici. Il gruppo ha scelto di non perseguire questo capitolato poiché la spiccata natura esplorativa del progetto basata sul confronto semantico non deterministico tramite LLM e la creazione di plugin ad hoc per l'harness OpenCode presentano un livello di incertezza architetturale che il gruppo ha valutato meno idoneo rispetto a capitolati con requisiti funzionali e vincoli tecnologici maggiormente definiti.

= Scelta finale del gruppo Astrum 
L’analisi dei capitolati presentati ha permesso al gruppo Astrum di individuare diverse proposte di elevato interesse formativo e tecnico, caratterizzate da approcci differenti allo sviluppo software e all’integrazione di tecnologie innovative. In particolare, la valutazione interna ha portato a identificare due progetti di maggiore interesse: C0 – AIRA, AI Requests Automation e C8 – Sonar, Documentazione vivente di uno store Shopify.
La valutazione del gruppo Astrum, basata su criteri quali l’interesse tecnologico, la chiarezza dei requisiti, la fattibilità del progetto, la disponibilità del supporto aziendale e le opportunità di apprendimento, ha portato a individuare C0 – AIRA, AI Requests Automation come prima scelta e C8 – Sonar, Documentazione vivente di uno store Shopify come seconda scelta.

== Analisi della prima scelta: C0 – AIRA, AI Requests Automation

Il capitolato C0, proposto da Sanmarco Informatica S.p.A., è risultato particolarmente interessante per il gruppo grazie alla concretezza del caso d’uso e alla possibilità di sviluppare una soluzione basata sull’impiego dell’Intelligenza Artificiale in un contesto aziendale reale. Il progetto prevede la realizzazione di uno strumento multimodale in grado di acquisire richieste provenienti da canali eterogenei, interpretarne il contenuto e trasformare informazioni non strutturate in dati organizzati, pronti per essere integrati nei sistemi gestionali aziendali. 
La scelta di questo capitolato è stata motivata anche dalla chiarezza con cui sono stati presentati i requisiti, dalla distinzione tra funzionalità obbligatorie e opzionali alla disponibilità di tecnologie ampiamente diffuse e documentate. Inoltre, il supporto tecnico previsto da Sanmarco Informatica S.p.A. e la possibilità di lavorare secondo una metodologia Agile rappresentano elementi favorevoli alla pianificazione e allo sviluppo del progetto.


== Analisi della seconda scelta: C8 – Sonar, Documentazione vivente di uno store Shopify

Il capitolato C8, proposto da Halue S.r.l., è stato individuato come seconda scelta del gruppo. Il progetto prevede lo sviluppo di un’applicazione in grado di analizzare uno store Shopify, acquisirne configurazioni e codice, ricostruire le dipendenze tra le diverse componenti e individuare elementi non più utilizzati. L’obiettivo è realizzare uno strumento capace di generare una documentazione tecnica aggiornata dello store e di fornire indicazioni utili per comprenderne la struttura, individuare possibili criticità e facilitare le attività di manutenzione. 
Il progetto è stato valutato positivamente per l’interesse dello stack tecnologico proposto, che comprende Next.js, Vercel e Supabase, e per la possibilità di confrontarsi con API reali, analisi statica del codice e modellazione delle dipendenze software. Anche la completezza del capitolato e la disponibilità del referente aziendale a chiarire i dubbi emersi durante il colloquio conoscitivo hanno contribuito a rendere Sonar una valida alternativa.
La scelta di collocare il progetto al secondo posto deriva tuttavia da alcune criticità individuate durante l’analisi di fattibilità. In particolare, l’utilizzo dell’ecosistema Vercel e la necessità di approfondire le API di Shopify, il linguaggio Liquid e le modalità di acquisizione delle risorse comportano un significativo impegno iniziale di studio. A ciò si aggiungono le problematiche legate al “rate limiting” delle API, che potrebbero richiedere una gestione accurata delle richieste e influire sui tempi di sviluppo, nonché alcune incertezze relative alla fattibilità di specifici requisiti.
Nonostante tali aspetti, Sonar rappresenta un progetto tecnicamente stimolante, con obiettivi concreti e un significativo valore formativo. Per queste ragioni, il gruppo Astrum ha deciso di mantenerlo come “seconda scelta”, qualora non fosse possibile procedere con la candidatura per AIRA.

= Conclusioni 

In conclusione, la valutazione comparativa ha portato il gruppo Astrum a privilegiare il capitolato “C0 – AIRA di Sanmarco Informatica S.p.A.”, ritenuto maggiormente in linea con l’interesse condiviso verso l’Intelligenza Artificiale applicata a problemi reali e con la volontà di sviluppare un sistema integrato, modulare ed estendibile.
Il capitolato “C8 – Sonar di Halue S.r.l.” costituisce invece una valida alternativa, grazie al suo contenuto tecnico, all’interesse dell’ambito applicativo e alle opportunità di approfondimento offerte, pur presentando alcune incognite in termini di complessità e pianificazione.

