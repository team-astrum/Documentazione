#import "/Template/tmp-documentazione.typ": conf, G, deco-line

#show: conf.with(
  titolo: "Piano di Progetto",
  status: "In bozza",
  utilizzo: "Esterno",
  redazione: ("Corrado Bacco",),
  verifica: ("Samuele Gobbi", "Gianluca Brotto"),
  approvazione: "",
  changelog: (
    (ver: "0.1.0", data: "2026-11-14", autore: "Corrado Bacco", ruolo: "Redattore", verificatore: "", desc: "Completamento parziale del documento."),
  )
)

#let format-titles(cell) = {
  cell.content = if calc.even(cell.x) {
      set text(weight: "bold", size: 1.1em)
      set align(right)
      cell.content
    } else {
      set text(weight: "light")
      cell.content
    }
  cell
}

= Introduzione
== Scopo del documento
Il seguente documento presenta il *#G("Piano di Progetto", def: "Documento gestionale che pianifica tempi, costi, risorse e rischi del progetto. Serve a monitorare l'avanzamento confrontando, per ogni sprint: preventivo, consuntivo di periodo, preventivo a finire e analisi dei compiti svolti e dei rischi. In modo tale da ricalibrare le attività in corso d'opera.")* del gruppo _Astrum_, ha lo scopo di definire in modo chiaro e strutturato le attività e i *#G("task", def: "compito, mansione da svolgere assegnata ad un specifico soggetto")* necessari alla realizzazione del progetto, andando a stabilire risorse, modalità operative e tempistiche di sviluppo. Il documento fornisce una visione complessiva e costantemente aggiornata dell'avanzamento del progetto didattico, consentendo al gruppo di pianificare, assegnare e monitorare i task definiti all'interno di ogni *#G("sprint", def: "Periodo breve e definito a monte (solitamente 1-2 settimane) in cui il team sviluppa un incremento di prodotto.")*.\

Per il documento risulta fondamentale l'analisi dei rischi attesi, accompagnata dalle relative politiche di mitigazione, al fine di riddurre l'incertezza e permettere al gruppo di affrontare imprevisti tecnologici, organizzattivi e/o personali con l'obiettivo di garantire la continuità del lavoro e il rispetto dei tempi di consegna. Inoltre, nel piano di progetto è incluso il *#G("preventivo", def: "Sezione del Piano di Progetto, che viene compilata ogni sprint, nel quale si stimano le ore e le risorse necessarie per completare le attività pianificate.")*, del progetto in cui viene definita la stima dei costi complessivi e la suddivisione oraria prevista per ogni ruolo, necesasari per la *candidatura*.\

Il gruppo _Astrum_ ha scelto di adottare un approccio *#G("agile", def: "Insieme di metodologie di sviluppo software basate su iterazioni brevi, collaborazione costante e adattamento continuo ai cambiamenti.")*, al termine di ogni sprint vengono aggiornati il *#G("consuntivo di periodo", def: "Sezione nel Piano di Progetto, che viene compilata ogni sprint, nel quale vengono analizzate le ore effettivamente consumate nello sprint interessato e di conseguenza le risorse utilizzate.")*, l'analisi dei rischi riscontrati, il *#G("preventivo a finire", def: "Sezione nel Piano di Progetto, che viene compilata ogni sprint, nel quale viene aggiornata la pianificazione futura e le risorse rimanenti in funzione delle risorse utilizzate nello sprint corrente.")* e il preventivo dello sprint successivo, i quali vengono analizzati durante le *#G("sprint retrospective", def: "Riunione interna del team volta a migliorare il way of working. Durante l'incontro si analizza cosa non ha funzionato nello Sprint appena concluso e si discutono possibili azioni per migliorare il processo nei successivi.")* bisettimanali.

Questo processo permette di aggiornare costantemente la pianificazione delle attività e dei task, migliorare i processi tramite review o retrospective periodiche e mantentenere una stima realistica del completamento finale.

== Glossario
Il *glossario* è un documento redatto dal gruppo e aggiornato nell'arco del progetto didattico, con lo scopo di fornire definizioni coerenti per i termini tecnici e specifici al corso di Ingegneria del Software. 

Questo documento risulta fondamentale per garantire una comprensione uniforme della documentazione prodotta ai soggetti esterni al gruppo e per definire uno standard di comunicazione interna tra i membri del gruppo, riducendo possibili incomprensioni e ambiguità. 

Per indicare che la definizione di una parola o di un concetto è disponibile nel glossario, si è deciso di utilizzare la seguente notazione: *#G("definizione nel glossario")*

== Riferimenti
=== Riferimenti normativi
- *Capitolato d'appalto C0:*
 - #underline[https://www.math.unipd.it/~tullio/IS-1/2026/Progetto/C0-AIRA.pdf]  

- *Norme di Progetto v.1.1.1:*
 - #underline[https://team-astrum.github.io/Documentazione/norme-di-progetto.pdf] 

\
=== Riferimenti informativi
- *Regolamento del progetto didattico:*
  - #underline[https://www.math.unipd.it/~tullio/IS-1/2026/Dispense/PD1.pdf]  

- *Ciclo di vita del software:*
 - #underline[https://www.math.unipd.it/~tullio/IS-1/2026/Dispense/T02.pdf]

- *Gestione di progetto:*
 - #underline[https://www.math.unipd.it/~tullio/IS-1/2026/Dispense/T04.pdf]

- *Glossario:*
  - #underline[https://team-astrum.github.io/Documentazione/glossario.pdf]

== Redazione del documento
Il *responsabile* è la figura incaricata di compilare e aggiornare il documento, con cadenza regolare al termine di ogni sprint.

Il workflow previsto per ogni sprint è il seguente:
+ Durante la *sprint retrospective* del gruppo vengono analizzati i risultati dello sprint precedente e pianificate le attività e i compiti futuri;

+ Il responsabile dello sprint compila il *consuntivo di periodo* e il *preventivo a finire* sulla base di quanto emerso in riunione, eseguendo i seguenti compiti:
 - descrive i compiti svolti;
 - redige la retrospettiva di periodo;
 - registra i rischi occorsi analizzandone cause e modalità di gestione;
 - aggiorna le risorse impiegate;
 - aggiorna ore e budget rimanente.
+ Infine, definisce i compiti da svolgere nello sprint corrente, individua i rischi attesi e compila il *preventivo* delle risorse necessarie.


= Analisi e mitigazione dei rischi
Questa sezione analizza i potenziali rischi e le difficoltàche il gruppo potrebbe incontrare durante lo svolgimento del progetto didattico.\
Realizzare un'ottima analisi preventiva consente di evitare conflitti interni, ritardi nelle scadenze, aumento dei costi di produzione e soppratutto, la realizzazione di un prodotto finale non conforme alle aspettative dell'azienda proponente.

L'analisi dei rischi si articola in quattro fasi:\
 - *Identificazione:* individuare i possibili rischi legati al progetto, al prodotto e al contesto di riferimento, riconoscendo tutti i fattori che potrebbero compromettere lo sviluppo del progetto e la qualità del prodotto finale;

- *Valutazione:* per ogni rischio identificato si valuta la probabilità di accadimento e l'impatto che potrebbe avere sul progetto, al fine di stabilire le priorità di intervento; 

- *Pianificazione:* definizione delle strategie di prevenzione o mitigazione dei rischi, stabilendo anticipatamente le azioni da intraprendere nel caso in cui il rischio si concretizzi.

- *Controllo:* monitoraggio costante attraverso indicatpri che rilevano eventuali problematiche, l'attuazione delle strategie di mitigazione e il miglioramento costante delle *Norme di Progetto*

Si riportano di seguito i rischi individuati dal gruppo, accompagnati dalla relativa analisi e dalle strategie di mitigazione.

== Rischi tecnologici
=== Apprendimento di nuove tecnologie
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [Lo studio delle tecnologie necessarie per il progetto potrebbe richiedere più tempo del previsto, ritardando l'avvio della progettazione e consumando diverse ore.], 
    
    [*Misure di mitigazione*], [Per mitigare questo rischio, il gruppo ha pianificato una fase di studio intensiva nei primi sprint. Al fine di gestire il tempo in modo efficiente, il team si dividerà in sotto-gruppi, ciascuno focalizzato sull'apprendimento di una specifica tecnologia, per poi ritrovarsi in incontri di allineamento dedicati alla condivisione delle conoscenze acquisite e alla risoluzione di dubbi collettivi. Inoltre, nelle fasi operative successive, il Responsabile assegnerà, ove possibile, le varie attività a chi ha precedentemente approfondito in modo specifico quel determinato ambito tecnico.],

    [*Occorrenza*], [Alta],
    [*Impatto*], [Medio]
  ),
  caption: [Rischi tecnologici - Apprendimento delle nuove tecnologie],
)
=== Problematiche nello sviluppo 
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [Il gruppo potrebbe incontrare difficoltà nello sviluppo softuware del *#G("PoC", def: "Proof of Concept - artefatto realizzato ad inizio progetto con lo scopo di valutare la fattibilità tecnologica del prodotto atteso. Deve rappresentare le richieste principali del capitolato.")* o l'*#G("MVP", def: "Minimum Viable Product - approssimazione del prodotto atteso dalla proponente, dotata di funzionalità minime ma sufficienti a essere testata e valutare la bontà della visione iniziale.")*, dovute a bug di programmazione o, nei casi più gravi, a errori di design. Tali problematiche potrbbero rallentare significatamente le attività e ostacolare il raggiungimento degli obiettivi.], 
    
    [*Misure di mitigazione*], [Il gruppo è consapevole che gli errori di programmazione sono inevitabili, sopprattutto considerando la limitata esperienza dei componenti del gruppo.\ Per mitigare questo rischio, si è scelto di adottare un approccio di sviluppo *#G("fail fast", def: "approccio di sviluppo che mira a identificare e risolvere errori o problemi il prima possibile, evitando di perdere tempo e risorse in progetti o funzionalità non validi.")*, con l'obiettivo di individuare i bug software il prima possibile attraverso:\
    - Scrittura di test corretti e aggiornati per ogni funzionalità implementata, in modo da rilevare eventuali regressioni o malfunzionamenti;
    - Mantenimento di un'elevata *#G("code coverage", def: "Percentuale di codice coperta dai test automatici, indica quanto è testata l'applicazione.")*
    
    Inoltre, chi dovesse riscontrare questa problematica potrà sempre richiedere supporto agli altri membri del gruppo e se necessario, contattare il proponente aziendale per chiarimenti o supporto tecnico.],
  
    [*Occorrenza*], [Alta],
    [*Impatto*], [Medio]
  ),
  caption: [Rischi tecnologici - Problematiche nello sviluppo software],
)

== Rischi organizzativi
=== Mancato rispetto delle scadenze prefissate
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [Durante lo svolgimento dei vari task possono verificarsi ritardi, i quali rischiano di prolungare i tempi di consegna e bloccare le attività successive e il conseguente avanzamento del progetto.], 
    
    [*Misure di mitigazione*], [I ritardi sono considerati eventi possibili nel corso del progetto, assumendo che ogni membro del gruppo faccia del proprio meglio per rispettare le scadenze prefissate. Essi devono essere adeguatamente giustificati e comunicati tempestivamente al gruppo, in modo da consentire una rapida riorganizzazione delle attività coinvolte e minimizzare l'impatto sul lavoro degli altri membri e, sopprattutto, sull'avanzamento del progetto.],
  
    [*Occorrenza*], [Media],
    [*Impatto*], [Alto]
  ),
  caption: [Rischi organizzativi - Mancato rispetto delle scadenze prefissate],
)

=== Errata pianificazione, stima dei tempi e rotazioni
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [In fase di pianificazione, c'è il rischio che il Responsabile sottostimi il tempo necessario per lo svolgimento di un'attività, causando ritardi nella consegna dei task. A questo si aggiunge un rischio di rallentamento e disorientamento iniziale ogni volta che, a causa della rotazione bisettimanale, un membro assume un nuovo ruolo che non padroneggia ancora completamente.], 
    
    [*Misure di mitigazione*], [ Per mitigare l'errore di stima, i task verranno scomposti in sotto-attività più piccole (più facili da valutare) e il Responsabile dovrà monitorare frequentemente l'avanzamento per riassegnare eventuali risorse. Per agevolare invece l'inserimento di una persona in un nuovo ruolo, è stato previsto che al termine di ogni sprint, il membro uscente da un ruolo comunica le attività svolte e, nella fase iniziale dello sprint successivo, fornisce supporto al subentrante per chiarire eventuali dubbi e rendere l'inserimento al nuovo ruolo il più veloce possibile.],
  
    [*Occorrenza*], [Bassa],
    [*Impatto*], [Medio]
  ),
  caption: [Rischi organizzativi - Errata pianificazione, stima dei tempi e rotazioni],
)

=== Incomprensione dei requisiti
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [Un insufficiente coinvolgimento dell'azienda proponente potrebbe causare un'incompresione dei requisiti, portando a un prodotto finale non conforme alle aspettative.], 
    
    [*Misure di mitigazione*], [ Il gruppo si impegna a mantenere una costante comunicazione con l'azienda proponente, presentando regolarmente lo stato di avanzamento del progetto e chiarendo tempestivamente eventuali dubbi o incertezze.\ Per garantire un allineamento continuo ed evitare incompresioni, _Astrum_ e l'azienda proponente pianificheranno incontri periodici per una review di quanto svolto, in modo da assicurare che lo sviluppo del progetto proceda in linea con le aspettative e i requisiti definiti.],
  
    [*Occorrenza*], [Media],
    [*Impatto*], [Alto]
  ),
  caption: [Rischi organizzativi - Incomprensione dei requisiti],
)
\
=== Presenza di opinioni contrastanti
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [All'interno del gruppo la presenza di opinioni differenti è un aspetto positivo, in quanto incentiva il confronto e contribuisce al raggiungimento della miglior soluzione possibile.\ Tuttavia, questo aspetto può risultare critico nel momento in cui genera contrasti e dissidi tra i componenti del gruppo], 
    
    [*Misure di mitigazione*], [Il gruppo si impegna a mantenere un confronto trasparente e costruttivo, con l'obiettivo di raggiungere soluzioni condivise.\ Se non si riuscisse a trovare un accordo interno, ci si riferirà ad un parere esterno del committente o dell'azienda proponente.],
  
    [*Occorrenza*], [Bassa],
    [*Impatto*], [Basso]
  ),
  caption: [Rischi organizzativi - Presenza di opinioni contrastanti],
)\

== Rischi personali
=== Problemi accademici
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [Eventuali sovvraccarichi accademici potrebbero influire sulla disponibilità dei membri del gruppo, causando ritardi nelle consegne], 
    
    [*Misure di mitigazione*], [Il gruppo è consapevole che, durante il periodo di progetto, la disponibilità dei membri potrà variare a causa di esigenze accademiche.\ Per mitigare tale situazione, sono stati individuati i periodi di inattività dei diversi componenti del gruppo. Per gestire efficacemente ciò sarà necessario:
    - Pianificare le attività tenendo in considerazione i calendari accademici e le sessioni d'esame durante le quali si prevede un rallentamento complessivo delle attività del team, necessario per permettere ai membri di dedicarsi alla preparazione degli esami accademici;
    - Mantenere una comunicazione trasparente riguardo a possibili variazioni di disponibilità;
    - Assegnare ruoli e task in modo flessibile, adattandoli alle esigenze di ciascun membro del gruppo ],
  
    [*Occorrenza*], [Media],
    [*Impatto*], [Medio]
  ),
  caption: [Rischi personali - Problemi accademici],
)

=== Problemi individuali
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { left + top } else { left + top },

    [*Descrizione*], [Eventuali impegni personali potrebbero influire sulla disponibilità dei membri del gruppo, causando ritardi nelle consegne], 
    
    [*Misure di mitigazione*], [I membri del gruppo potrebbero essere indisponibili a causa di esigenze personali (famiglia, salute, imprevisti). Queste variazioni possono influire sulla continuità del lavoro e sulla capacità del team di rispettare le scadenze. Per mitigare questi avvenimenti il gruppo si impegna nel rispettare i seguenti punti adottati:\
    - Prevedere adeguati buffer temporali nelle pianificazioni;
    - Mantenere una comunicazione trasparente e tempestiva su possibili indisponibilità;
    - Garantire flessibilità nei ruoli e nelle attività da svolgere.],
  
    [*Occorrenza*], [Bassa],
    [*Impatto*], [Medio]
  ),
  caption: [Rischi personali - Problemi individuali],
)\

= Calendario di massima del progetto
Il gruppo _Astrum_ si impegna a presentare la candidatura per l'*RTB* entro il *19 febbraio 2027*, con possibilità di deroga a seconda delle necessità del gruppo.\ Inoltre, come descritto nella #underline(link("https://team-astrum.github.io/Documentazione/Candidatura/Generale/dichiarazione-impegni.pdf")[Dichiarazione degli Impegni]) _Astrum_ si impegna a terminare il progetto entro il giorno *16 aprile 2027*, senza alcuna possibilità di deroga.

\
= Impegno orario previsto
Il gruppo ha deciso di dedicare un totale di *95 ore produttive* per ogni componente, le quali verranno distribuite tra diversi ruoli.

#pagebreak()

= Stima dei costi realizzazione
Il preventivo dei costi riportato di seguito è calcolato motivando le ore assegnate a ciascun ruolo per il relativo costo orario.
#figure(
  table(
    columns: (1fr, 50pt, 75pt, 100pt, 100pt),
    inset: 10pt,
    stroke: (0.5pt + deco-line),
    align: (col, _) => if col == 0 { left } else { center },
    table.header(
      [*Ruolo*], [*%*], [*Ore totali*], [*Costo orario*], [*Costo totale*]
    ),
    [Responsabile], [8%], [55], [30€/h], [1.650€],
    [Amministratore], [8%], [55], [20€/h], [1.100€],
    [Analista], [11%], [70], [25€/h], [1.750€],
    [Progettista], [15%], [100], [25€/h], [2.500€],
    [Programmatore], [29%], [195], [15€/h], [2.925€],
    [Verificatore], [29%], [190], [15€/h], [2.850€],
    table.cell(align: right)[*TOTALE*], [*100%*], [*665*], [-], [*12.775€*]
  ),
  caption: [Preventivo con ripartizione ore per ruolo])
\
= Pianificazione RTB
La *RTB* è un periodo in cui vengono fissati i requisiti da soddisfare e si motivano le tecnologie, i framework e le librerie scelte. Inoltre, è necessario produrre un artefatto, chiamato *PoC*, il quale ha lo scopo di valutare la fattibilità del prodotto atteso secondo le scelte implementative intraprese.

== Stesura Analisi dei Requisiti
Il documento *#G("Analisi dei Requisiti", def: "Attività che studia i bisogni dell'utente e del dominio d'uso per definire che cosa il prodotto software deve fare per soddisfarli, senza descrivere come sarà realizzato. Produce una specifica completa, verificabile e tracciabile dei requisiti del sistema ")* ha lo scopo di formalizzare le specifiche del prodotto finale, definendo in modo chiaro le funzionalità, i vincoli e le interazioni del sistema. Questo documento rappresenta il riferimento principale per la verifica della conformità del prodotto rispetto alle richieste dell'azienda proponente. \ Per la stesura dell'*Analisi dei Requisiti* sono previste le seguenti attività:

- *Analisi del capitolato e identificazione delle tecnologie:* analisi approfondita del capitolato con identificazione delle tecnologie necessarie per lo sviluppo del prodotto finale;

- *Definizione scenari d'uso:* individuazione degli scenari appricativi di ogni tecnologia con l'obiettivo di scomporli in casi d'uso più specifici;

- *Definizione dei casi d'uso (use case):* modellazione delle interazioni tramite diagrammi UML e descrizioni testuali dettagliate, comprendenti pre e post-condizioni, scenari applicativi principali e alternativi
\

- *Specifica dei requisiti:* individuazione e classificazione dei requisiti in:
 - Funzionali: comportamenti attesi dal prodotto finale;
 - Non funzionali: vincoli di qualità.performace, e sicurezza;
 - Di dominio: vincoli dipendenti dal contesto applicativo.

La stesura di questo documento coprirà l'intero arco temporale del periodo di RTB, iniziando dal primo sprint e concludendosi con la revisione RTB che attesta la corretta definizione dei requisiti e delle tecnologie scelte.

== Stesura Piano di Progetto
Il *Piano di Progetto* definisce in modo chiaro e strutturato tutte le attività necessarie alla realizzazione del progetto, stabilendo risorse, modalità lavorative e tempistiche di sviluppo.
Nel documento sono richieste le seguenti sezioni:
 - Introduzione;
 - Analisi e mitigazione dei rischi;
 - Stima delle tempistiche di consegna, dei costi e delle risorse necessarie;
 - Pianificazione a lungo termine delle attività previste per l'*RTB*;
 - Analisi dettagliata dei singoli *sprint*.

Il documento in questione verrà aggiornato nel corso di tutti gli *sprint*, poiché ha l'obiettivo di rendicontarne l'avanzamento.\ Le stime relative ai costi e alla data di consegna potrebbero essere aggiornate qualora emergano nuove informazioni o si rilevino previsioni errate. Allo stesso modo, l'analisi dei rischi e le reletive strategie di mitigazione protrebbero essre riviste ogni volta che viene rilevato un rischio, trattandosi di un processso continuo e non limitato al periodo iniziale.

== Stesura Norme di Progetto
Il documento *#G("Norme di Progetto", def: "Documento esecutivo interno al gruppo che definisce procedure, regole e strumenti per organizzare il lavoro in modo professionale e ripetibile.")* definisce il Way of Working del gruppo, stabilendo le regole e le procedure operative da seguire per garantire uniformità, efficienza ed efficacia nello svolgimento del progetto.

Il documento prevede la definizione delle seguenti tipologie di processo:

- *Processi primari:* definiscono le attività direttamente legate alla realizzazione del prodotto finale, come l'*aggiudicazione dell'appalto*;

- *Processi di supporto:* definiscono le attività che integrano con i processi primari con l'obiettivo di semplificare e migliorare il lavoro del gruppo. Alcuni processi di supporto sono la *gestione delle configurazioni* e la *documentazione* 
- *Processi organizzativi:* avvengono parallelamente ai processi primari, le attività previste da questi processi sono volte a garantire un'ottima organizzazione dei processi di ciclo vita e di migliorarli durante l'esecuzione del progetto. Esempio di processo organizzativo è la *formazione*.

Questo documento è incrementale perciò verrà aggiornato durante tutto l'arco del progetto didattico, con l'obiettivo di ultimarlo definitavamente verso la fine del periodo di *RTB*, quando le attività e i processi saranno ben definiti.

== Stesura glossario
Il *glossario* ha lo scopo di facilitare la comprensione della documentazione da parte dei lettori esterni al gruppo _Astrum_ e di fissare, all'interno del team, definizioni univoche che riducano possibili ambiguità interpretative. Il documento viene costantemente aggiornato automaticamente tramite uno script in Phyton, integrando progressivamente nuove definizioni. La stesura completa è prevista al completamento del progetto didattico.

\
= Pianificazione e analisi sprint per RTB
Questa sezione descrive come il gruppo organizza, monitora e valuta quanto svolto durante ciascun *sprint*. Ogni *sprint* viene valutato attraverso un *consuntivo di periodo*, il *preventivo a finire*, le attività svolte, eventuali rischi rilevati e la *sprint retrospective*. 

Al termine di ogni *sprint* viene redatta la programmazione e la previsione dello sprint successivo, definendo le attività e i task da svolgere.

== Sprint 1
Inizio: 2026-11-04 \
Fine: 2026-11-13

Questo primo *sprint* ha lo scopo di avviare lo studio delle varie tecnologie necessarie nel progetto didattico e iniziare una prima stesura dei documenti *Piano di Progetto* e *Analisi dei Requisiti*.

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Studio delle tecnologie necessarie per la realizzazione del prodotto finale;
- Stesura iniziale del *Piano di Progetto* da parte del responsabile;
- Stesura iniziale dell'*Analisi dei Requisiti* da parte degli analisti.

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti:
- Studio delle tecnologie necessarie per la realizzazione del prodotto finale;
- Stesura iniziale del *Piano di Progetto* da parte del responsabile;
- Stesura iniziale dell'*Analisi dei Requisiti* da parte degli analisti.

=== Retrospettiva
Il gruppo ha svolto, come previsto, la *Sprint Retrospective* in data 2026-11-14. I task previsti sono stati completati correttamente. Nel gruppo _Astrum_ è presente una forte coesione tra i membri e si evidenzia un sentimento di tranquillità rispetto all'avanzamento del progetto e alla suddivisione delle attività da svolgere.
#pagebreak()
=== Consuntivo di periodo
Nelle tabelle di conteggio delle risorse utilizzate e rimanenti verranno utilizzati degli acronimi per descrivere i diversi ruoli: 

- *RE*: Responsabile
- *AM*: Amministratore
- *AN*: Analista
- *PG*: Progettista
- *PM*: Programmatore
- *VE*: Verificatore
\
==== Risorse utilizzate
#figure(
  table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: (col, row) => if col == 0 { left } else { center },
    inset: 4.5pt,
    stroke: 0.3pt + gray.lighten(50%),
    
    table.header(
      [*Nome*], [*RE*], [*AM*], [*AN*], 
      [*PG*], [*PM*], [*VE*], [*Totale*]
    ),
    
    "Corrado Bacco", "3", "-", "-", "-", "-", "-", [*3*],
    "Gianluca Bacco", "-", "-", "2", "-", "-", "-", [*2*],
    "Gianluca Brotto", "-", "-", "-", "-", "-", "3", [*3*],
    "Matteo De Col", "-", "-", "2", "-", "-", "-", [*2*],
    "Filippo De Guio", "-", "-", "3", "-", "-", "-", [*3*],
    "Samuele Gobbi", "-", "-", "-", "-", "-", "3", [*3*],
    "Thomas Morettin", "-", "6", "-", "-", "-", "-", [*6*],
    
    table.footer([*TOTALE*], [*3*], [*6*], [*7*], [*0*], [*0*], [*6*], [*22*]),
  ),
  caption: [Sprint 1 - Risorse utilizzate]
)
\
=== Preventivo a finire
==== Aggiornamento ore rimanenti 
#figure(
  table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: (col, row) => if col == 0 { left } else { center },
    inset: 4.5pt,
    stroke: 0.3pt + gray.lighten(50%),
    
    table.header(
      [*Nome*], [*RE*], [*AM*], [*AN*], 
      [*PG*], [*PM*], [*VE*], [*Totale*]
    ),
    
    "Corrado Bacco", "3", "-", "-", "-", "-", "-", [*92*],
    "Gianluca Bacco", "-", "-", "2", "-", "-", "-", [*93*],
    "Gianluca Brotto", "-", "-", "-", "-", "-", "3", [*92*],
    "Matteo De Col", "-", "-", "2", "-", "-", "-", [*93*],
    "Filippo De Guio", "-", "-", "3", "-", "-", "-", [*92*],
    "Samuele Gobbi", "-", "-", "-", "-", "-", "3", [*92*],
    "Thomas Morettin", "-", "6", "-", "-", "-", "-", [*89*],
    
    table.footer([*TOTALE*], [*3*], [*6*], [*7*], [*0*], [*0*], [*6*], [*643*]),
  ),
  caption: [Sprint 1 - Aggiornamento ore rimanenti]
)

==== Aggiornamento costi
#figure(
  table(
    columns: (1fr, 50pt, 75pt, 100pt, 100pt),
    inset: 10pt,
    stroke: (0.5pt + deco-line),
    align: (col, _) => if col == 0 { left } else { center },
    table.header(
      [*Ruolo*], [*%*], [*Ore totali*], [*Costo orario*], [*Costo totale*]
    ),
    [Responsabile], [8%], [52 (-3)], [30€/h], [1.560€ (-90€)],
    [Amministratore], [8%], [49 (-6)], [20€/h], [980€ (-120€)],
    [Analista], [11%], [63 (-7)], [25€/h], [1.575€ (-175€)],
    [Progettista], [15%], [100], [25€/h], [2.500€],
    [Programmatore], [29%], [195], [15€/h], [2.925€],
    [Verificatore], [29%], [184 (-6)], [15€/h], [2.760€ (-90€)],
    table.cell(align: right)[*TOTALE*], [*100%*], [*643*], [-], [*12.300€*]
  ),
  caption: [Sprint 1 - Aggiornamento costi])

























  