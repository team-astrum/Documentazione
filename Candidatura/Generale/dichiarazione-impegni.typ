#import "../../Template/tmp-documentazione.typ": conf, G, deco-line

#show: conf.with(
  titolo: "Dichiarazione Impegni",
  status: "Approvato",
  utilizzo: "Esterno",
  redazione: ("Thomas Morettin","Gianluca Brotto"),
  verifica: ("Matteo De Col", "Corrado Bacco"),
  approvazione: "Filippo De Guio",
  changelog: (
    (ver: "1.0.0", data: "2026-10-28", autore: "Gianluca Brotto", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Corretto Refuso"),
    (ver: "0.2.0", data: "2026-10-28", autore: "Gianluca Brotto", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Aggiunta sezione Analisi dei rischi"),
    (ver: "0.1.5", data: "2026-10-27", autore: "Thomas Morettin", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Refuso con figura di responsabile al capitolo 4.1."),
    (ver: "0.1.4", data: "2026-10-27", autore: "Thomas Morettin", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Piccole correzioni su termini e ripetizioni."),
    (ver: "0.1.3", data: "2026-10-27", autore: "Thomas Morettin", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Modifica ai termini incongruenti di PoC a glossario."),
    (ver: "0.1.2", data: "2026-10-27", autore: "Thomas Morettin", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Inserimento della regola per conflitto di interessi."),
    (ver: "0.1.1", data: "2026-10-27", autore: "Thomas Morettin", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Piccola modifica nella definizione a glossario di PoC."),
    (ver: "0.1.0", data: "2026-10-27", autore: "Thomas Morettin", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Completamento parziale del documento."),
    (ver: "0.0.1", data: "2026-10-26", autore: "Thomas Morettin", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Redazione primaria del documento."),
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

= Scopo del documento
Il seguente documento presenta il preventivo costi del gruppo _Astrum_, volto a finalizzare gli estremi della candidatura per il capitolato C0 - AIRA dell'azienda proponente Sanmarco Informatica S.p.A.. \
Questo documento viene redatto in conformità con il regolamento del progetto didattico presentato dai committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin, per il corso di Ingegneria del Software. \
Nello specifico il documento è punto di riferimento per le attività di progetto, utile sia al gruppo di lavoro che agli #G("stakeholders", def: "Gruppo o organizzazione che ha un interesse o una responsabilità nei risultati di un'attività, o come nel seguente caso di un progetto.") per monitorare la suddivisione del carico lavorativo e la giustificazione dietro i costi esposti.

= Dati generali
Prima di approfondire le diverse tematiche inerenti al preventivo costi, si vogliono esporre i dati utili alla comprensione di tutte le scelte da qui riportate:
- *7* studenti facenti parte del gruppo _Astrum_;
- *95* ore preventivate per ciascun componente del gruppo, in grado di coprire ritardi o carico di lavoro aggiuntivo;
- *665* ore complessive di lavoro per tutto il gruppo;
- *2026-11-04* data di inizio lavori, conseguente all'aggiudicazione del capitolato;
- *2027-04-16* data di fine lavori preventivata a seguito di ragionamenti circa:
  - progettazione per mezzo di strumenti nuovi a tutto il gruppo;
  - mitigazione dei rischi legati ai macroargomenti da trattare (@rischi);
  - revisione della documentazione a seguito della milestone #G("RTB (Requirements & Technology Baseline)", def: "Milestone di progetto, coincidente con la prima revisione di avanzamento. In questa fase il team presenta la definizione dei requisiti e dimostra il PoC (Proof of Concept). L'obiettivo è quindi quello di validare le scelte tecnologiche e l'integrazione iniziale dei componenti prima di procedere con l'architettura finale.").

= Analisi dei ruoli
Si riporta un'analisi dei ruoli sui quali il gruppo ruoterà a cadenza *bisettimanale*, con analisi da parte del Responsabile di quali sono le figure più idonee alla fase in itinere e la conseguente contabilizzazione delle ore, seguendo rigorosamente la definizione di ciascun task all'interno dello sprint.

== Responsabile
Il _responsabile_ assume il ruolo di Project Manager. È la figura di riferimento nei rapporti esterni con i committenti e il proponente aziendale.
Egli è l'unica figura costantemente presente all'interno degli sprint, in quanto ha il compito di presiedere le riunioni interne ed esterne, definire scadenze relativamente all'avanzamento di progetto e redigere, al termine di ogni sprint, il consuntivo di periodo.\
Inoltre, questa figura ha il compito di presiedere le riunioni di review dello sprint con cadenza *settimanale*.

== Amministratore
L'_amministratore_ è il garante dell'infrastruttura tecnologica e procedurale del gruppo, che in _Astrum_ si traduce nella gestione della totale organizzazione GitHub.
Questa figura risulta fondamentale in determinati sprint poiché assicura l'efficienza del #G("Way of Working", def: "Best practices per organizzare al meglio le attività di progetto. Il tutto viene fatto pertanto in modo professionale e con modalità concordate all'interno del gruppo.") e monitora lo stato di efficienza dell'organizzazione GitHub o strumenti ad essa collegati.

== Analista
L'_analista_ è la figura di Requirements Engineer. Ha il compito di comprendere e formalizzare il dominio applicativo del progetto.
Ha il compito di comprendere le richieste del proponente aziendale.\
Si è optato per pianificare questa figura sia all'inizio del lavoro che nella fase conseguente al superamento della milestone #G("RTB (Requirements & Technology Baseline)") per eventuali modifiche richieste dai committenti.

== Progettista
Il _progettista_ è la figura operativa che traduce i requisiti analizzati dall'analista in soluzioni tecniche realizzabili, solide e scalabili. Ha quindi il compito di selezionare le tecnologie, i #G("framework", def: "Architettura logica di supporto che fornisce una struttura di base per sviluppare software o gestire processi.") e i #G("design pattern", def: "Soluzione progettuale generale, riutilizzabile e già collaudata a un problema ricorrente che si presenta durante lo sviluppo di codice. Non si parla di codice \"preconfezionato\", ma bensì di un modello logico (linea guida) che può essere adattata a diversi linguaggi e contesti") più adatti al progetto.\
All'interno di questo progetto la figura viene richiamata all'interno di molteplici sprint.

== Programmatore
Il _programmatore_ è la figura operativa maggiormente presente negli sprint di programmazione del #G("MVP (Minimum Viable Product)", def: "Versione più semplice e basilare di un nuovo prodotto software, dotata esclusivamente delle funzionalità essenziali necessarie a soddisfare i primi stakeholders e a testa un'idea sul mercato."), fermo restando che viene presa in considerazione anche per la fase antecedente la RTB per la creazione del #G("PoC (Proof of Concept)", def: "Rappresenta una piccola sperimentazione usata per dimostrare che un'idea, o nel caso di Astrum un progetto, può essere realizzata concretamente.").\
Il compito di questa figura è quindi quello di scrittura del codice sorgente.

== Verificatore
Il _verificatore_ è il ruolo di garante della qualità globale all'interno del progetto, operando sempre in regime di totale indipendenza (non verifica mai codice/documenti prodotti da sé stesso).\
Questa figura è costantemente presente nel progetto, sia per la validazione dei documenti che per la validazione del codice sorgente tramite definizione di metriche e soglie di accettabilità.
#pagebreak()

= Ripartizione ore per ruolo
Si riporta, all'interno del seguente capitolo la ripartizione oraria dei ruoli, con analisi del costo totale secondo le percentuali di riferimento:

#figure(
  table(
    columns: (1fr, 50pt, 75pt, 100pt, 100pt),
    inset: 10pt,
    stroke: (0.5pt + deco-line),
    align: (col, _) => if col == 0 { left } else { center },
    table.header(
      [*Ruolo*], [*%*], [*Ore totali*], [*Costo orario*], [*Costo totale*]
    ),
    [Responsabile], [8%], [55], [30€], [1.650€],
    [Amministratore], [8%], [55], [20€], [1.100€],
    [Analista], [11%], [70], [25€], [1.750€],
    [Progettista], [15%], [100], [25€], [2.500€],
    [Programmatore], [29%], [195], [15€], [2.925€],
    [Verificatore], [29%], [190], [15€], [2.850€],
    table.cell(align: right)[*TOTALE*], [*100%*], [*665*], [-], [*12.775€*]
  ),
  caption: "Ripartizione ore per ruolo"
) <ore>

== Metodologia di assegnazione e chiarimenti
I ruoli sopra riportati sono assegnati, a ciascun membro del gruppo, all'inizio di ogni sprint da parte del responsabile, garantendo la massima flessibilità di azione sia per quanto riguarda la grandezza dei task da svolgere che per mantenere un monte ore finale congruo con le regole del progetto universitario.\
La figura di responsabile, pertanto, si riserva la facoltà di rivedere le ore totali di ciascun ruolo (@ore) analizzandone l'effettiva utilità in previsione degli sprint futuri, garantendo così la possibilità di mitigare rischi legati al ritardo nella consegna del progetto (@rischi).\
Tutte le decisioni saranno formalmente concordate collegialmente, tra il responsabile corrente e i restanti membri del gruppo, e documentate in modo da garantire la tracciabilità della suddivisione.

== Criteri di rotazione dei ruoli
Come sopra riportato, si precisa che non esiste un criterio di rotazione dei ruoli definito a posteriori dell'inizio del progetto.\
Tutti i ruoli ruotano con cadenza *bisettimanale*, al termine di ciascuno sprint, per stretta decisione del responsabile corrente.\
Le idee alla base della suddivisione dei ruoli rimangono sempre (come da regolamento universitario):
- suddivisione equa dei ruoli, in modo tale che ciascun membro del gruppo abbia la possibilità di svolgere tutti i ruoli con all'incirca lo stesso quantitativo di ore dei propri compagni;
- la rotazione deve tenere obbligatoriamente conto del possibile conflitto di interessi tra le figure, vale a dire che un verificatore non può svolgere la propria attività su materiale redatto da sé stesso in sprint precedenti;
- il responsabile ruota agilmente, ad ogni sprint, secondo il seguente ordine dei membri (modificabile a discrezione del gruppo in caso di superamento del monte ore personale o per possibile inficiamento della regola precedente):
 1. _Corrado Bacco_ (2148615);
 2. _Gianluca Bacco_ (2111937);
 3. _Gianluca Brotto_ (2148626);
 4. _Matteo De Col_ (2148619);
 5. _Filippo De Guio_ (2113177);
 6. _Samuele Gobbi_ (2148004);
 7. _Thomas Morettin_ (2111001).

= Carico lavorativo per sprint
Durante la stesura del seguente preventivo si è tenuto conto, all'unanimità, che il periodo di svolgimento del progetto deve presentare dei periodi di avanzamento a carico variabile; ciò significa che gli sprint non consumeranno lo stesso quantitativo di ore produttive, ma ne viene fatta una suddivisione nei sottocapitoli seguenti.

== S1 - S4, carico lavorativo medio
Questo periodo si articola dalla data *2026-11-04* fino alla data *2026-12-23* (per ragioni di riposo del team lo sprint termina 2 giorni prima rispetto alla consueta durata *bisettimanale*). In questa fase il carico lavorativo si attesta ad un livello intermedio, con un dispiegamento di ore produttive consono alla realizzazione dei documenti e del #G("PoC (Proof of Concept)") per la milestone di avanzamento #G("RTB (Requirements & Technology Baseline)").\
Lo sprint S1 ha la durata di 1 settimana, per allineare il regolare termine degli sprint successivi alla giornata di venerdì, antecedente il periodo del weekend.

== S5 - S8, carico lavorativo ridotto
Questo periodo si articola dalla data *2026-12-26* fino alla data *2027-02-19*. L'obiettivo di questi sprint è quello di mantenere attivo il lavoro, rimanendo però ad un carico di lavoro ridotto (all'incirca _-50%_ di carico rispetto alla fase precedente) per permettere ai membri del gruppo di terminare la preparazione degli esami per la sessione invernale (2027-01-18 - 2027-02-20).\
Le ore produttive totali al termine di ciascuno sprint saranno notevolmente ridotte, mantenendo comunque un flusso di lavoro stabile.

== S8 - S12, carico lavorativo alto
Questo periodo si articola dalla data *2027-02-20* fino alla data *2027-04-16*. L'obiettivo di questi sprint è quello di aumentare il quantitativo di lavoro rispetto a tutti gli sprint precedenti (all'incirca _+33%_ rispetto alla prima fase e _+167%_ rispetto alla seconda fase), per permettere un avanzamento solido nello sviluppo del #G("MVP") e portare un lavoro significativo all'ultima revisione di avanzamento #G("PB (Product Baseline)", def: "Milestone di progetto, coincidente con la seconda e ultima revisione di avanzamento. In questa fase il team presenta l'insieme approvato di specifiche che descrivono nel dettaglio il design definitivo di un prodotto, comprese le sue caratteristiche fisiche e funzionali tramite la progettazione di un MVP.").\
All'interno di questa fase le figure di programmatore e verificatore portano il quantitativo di ore produttive ad un aumento sostanziale.

= Analisi dei rischi e mitigazione <rischi>
Durante la fase di pianificazione e stesura del preventivo, sono stati individuati alcuni rischi che potrebbero ostacolare lo sviluppo del progetto, portando a ritardi o problemi operativi interni.
Per ognuno di essi sono state previste delle politiche di mitigazione, con l'obiettivo di risolverli tempestivamente o limitarne l'impatto sul rispetto del monte ore e delle scadenze previste.

== Rallentamento delle attività
Si prevede un rallentamento complessivo delle attività del team durante la sessione invernale, necessario per permettere ai membri di dedicarsi alla preparazione degli esami accademici. Inoltre, impegni personali imprevisti potrebbero limitare le risorse a disposizione, lasciando indietro attività importanti.
Per risolvere il problema della sessione, il carico di lavoro è stato ripartito in modo da concentrare le attività nella fase iniziale e, in particolar modo, nel periodo post-sessione. Per evitare invece rallentamenti dovuti agli impegni personali, ogni membro indicherà in un calendario condiviso i propri periodi di indisponibilità. In questo modo, il Responsabile potrà assegnare le attività critiche a chi garantisce maggiore disponibilità, evitando blocchi operativi. Inoltre, eventuali imprevisti dovranno essere segnalati tempestivamente.

== Pianificazione, stima dei tempi e rotazioni
In fase di pianificazione, c'è il rischio che il Responsabile sottostimi il tempo necessario per lo svolgimento di un'attività, causando ritardi nella consegna dei task. A questo si aggiunge un rischio di rallentamento e disorientamento iniziale ogni volta che, a causa della rotazione bisettimanale, un membro assume un nuovo ruolo che non padroneggia ancora completamente. Per mitigare l'errore di stima, i task verranno scomposti in sotto-attività più piccole (più facili da valutare) e il Responsabile dovrà monitorare frequentemente l'avanzamento per riassegnare eventuali risorse. Per agevolare invece l'inserimento di una persona in un nuovo ruolo, è stato previsto che al termine di ogni sprint, il membro uscente da un ruolo comunica le attività svolte e, nella fase iniziale dello sprint successivo, fornisce supporto al subentrante per chiarire eventuali dubbi e rendere l'inserimento al nuovo ruolo il più veloce possibile.

== Studio delle tecnologie
Lo studio delle tecnologie necessarie per il progetto potrebbe richiedere più tempo del previsto, ritardando l'avvio della progettazione e consumando diverse ore. Per mitigare questo rischio, il gruppo ha pianificato una fase di studio intensiva nei primi sprint. Al fine di gestire il tempo in modo efficiente, il team si dividerà in sotto-gruppi, ciascuno focalizzato sull'apprendimento di una specifica tecnologia, per poi ritrovarsi in incontri di allineamento dedicati alla condivisione delle conoscenze acquisite e alla risoluzione di dubbi collettivi. Inoltre, nelle fasi operative successive, il Responsabile assegnerà, ove possibile, le varie attività a chi ha precedentemente approfondito in modo specifico quel determinato ambito tecnico.

== Criticità tecniche e supporto dell'azienda
Nonostante l'analisi dei requisiti avvenga all'inizio del progetto, durante lo sviluppo vero e proprio il team potrebbe riscontrare problemi tecnici, dubbi o ostacoli imprevisti in grado di bloccare temporaneamente l'avanzamento del progetto. Per far fronte a questa eventualità, come garantito da Sanmarco Informatica durante l'incontro esterno, l'azienda ha assicurato la propria disponibilità per incontri periodici volti a verificare il regolare andamento del progetto. A questo supporto continuo si aggiunge la possibilità di instaurare canali di comunicazione più rapidi e diretti, i quali sarebbero fondamentali per ricevere chiarimenti tempestivi e gestire velocemente qualsiasi problema tecnico urgente.

= Conclusioni
Alla luce di quanto riportato all'interno di questo documento il gruppo _Astrum_ sancisce la data di inizio lavori prevista per il *2026-11-04*, con termine per la data *2027-04-16*.\
Considerate il monte ore totale previsto per studente, il periodo temporale di svolgimento dell'intero progetto e i costi per i singoli ruoli, il preventivo per il capitolato C0 - AIRA dell'azienda proponente Sanmarco Informatica S.p.A. ammonta a *12.775€*.