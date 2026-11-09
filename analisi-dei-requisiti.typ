#import "Template/tmp-documentazione.typ": conf, usecase, G

#show: conf.with(
  titolo: "Analisi dei Requisiti",
  status: "Da approvare", // Oppure "Approvato"
  utilizzo: "Interno", // Oppure "Esterno"
  redazione: ("Filippo De Guio", "Matteo De Col", "Gianluca Bacco"),
  verifica: (" ", " "),
  approvazione: " ",
  changelog: (
      (ver: "0.0.1", data: "2026-11-07", autore: "Filippo De Guio", ruolo: "Redattore", verificatore:" ", desc: "Creazione e stesura della bozza iniziale di documento."),
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

- *Desiderabile*: funzionalità ad alto valore aggiunto che arricchisce il sistema, pur non essendo strettamente vincolante per l'MVP;

- *Opzionale*: elemento accessorio o prestazionale, valutabile per integrazioni future o revisioni avanzate.

Il contenuto della presente analisi è indirizzato alle seguenti figure di progetto:

- *Sanmarco Informatica S.p.A.* (Proponente): per validare la correttezza delle specifiche e l'interpretazione dei bisogni aziendali;

- *Prof. Tullio Vardanega* e *Prof. Riccardo Cardin* (Committenti): per accertare la conformità del documento agli standard qualitativi e didattici richiesti;

- *Progettisti* e *Programmatori*: come riferimento vincolante per l'architettura del software e la stesura del codice;

- *Verificatori*: come base per la progettazione dei test di unità, di integrazione e delle procedure di collaudo.

== Prospettiva del prodotto

