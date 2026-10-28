#import "../../Template/tmp-verbale.typ": conf, decisioni, G

#show: conf.with(
  tipo: "Esterno", 
  data: "2026-10-26",
  ora-inizio: "15:00",
  ora-fine: "15:30",
  luogo: "Microsoft Teams",
  azienda: "Vargroup SpA - Alessio Borgheresi, Laura Ferretti, Michele Massaro, Stefano Dindo",
  presenti: ("Thomas Morettin ", "Gianluca Bacco ", "Corrado Bacco", "Gianluca Brotto ", "Matteo De Col", "Filippo De Guio", "Samuele Gobbi"),
  assenti: (),
  responsabile: "Filippo De Guio",
  redattore: "De Col Matteo",
  verificatore: "Gianluca Brotto",
  changelog: (
    (ver: "1.0.0", data: "2026-10-26", autore: "Filippo De Guio", ruolo: "Responsabile", desc: "Approvazione del documento."),
    (ver: "0.0.1", data: "2026-10-26", autore: "De Col Matteo", ruolo: "Redattore", verificatore: "Gianluca Brotto", desc: "Creazione e stesura verbale."),
  )
)

= Introduzione
Il presente documento attesta che, in data 26 ottobre 2026, è avvenuto l'incontro con il proponente Vargroup SpA, in videoconferenza dalle ore 15:00 alle ore 15:30.

= Ordine del giorno
L'incontro, svolto in modalità congiunta con altri gruppi, è stato indetto per chiarire i seguenti punti tecnici e architetturali emersi dall'analisi del capitolato:
- Frequenza di aggiornamento richiesta per le metriche della dashboard.
- Fornitura del dataset per la validazione della cache semantica.
- Gestione dell'anonimizzazione dei dati sensibili rispetto alla generazione degli embedding.
- Livello di condivisione della cache semantica in relazione ai vincoli di multi-tenancy.
- Comportamento della similarità semantica in presenza di uno storico di messaggi.
- Scelte implementative per l'estensione del progetto open source LiteLLM.
- Perimetro di calcolo dei costi (generativi vs. embedding) per la dashboard FinOps.

= Resoconto

== Architettura del Sistema e Integrazione con LiteLLM
- Estensione di LiteLLM: Per estendere le funzionalità del proxy LiteLLM, l'azienda richiede la creazione di un fork del progetto open-source originario. Non è pertanto sufficiente sviluppare un servizio esterno che faccia da wrapper, ma è necessario intervenire integrando le logiche (plugin/callback) direttamente nel codice sorgente.
- Layer di Anonymizer: Conformemente all'architettura proposta che prevede l'isolamento dei dati e l'uso di un "Anonymizer", è stato confermato in linea di massima che l'anonimizzazione dei dati sensibili dovrà essere gestita a monte, prima della generazione dell'embedding per la cache semantica.

== Funzionamento della Cache Semantica
- Condivisione e Multi-tenancy: Sebbene il progetto imponga il vincolo della multi-tenancy per isolare i dati tra team e progetti, è stato chiarito che la cache semantica dovrà operare su un livello di condivisione globale, risultando accessibile a tutti per massimizzare l'efficienza.
- Storico Conversazioni: Per quanto riguarda il calcolo della similarità semantica e il riconoscimento di query simili all'interno di una conversazione strutturata, si valuterà inizialmente solo l'ultimo messaggio inserito. Eventuali logiche più complesse relative all'intera finestra di contesto saranno definite con precisione durante la fase di progettazione.
- Dataset di Validazione: Non sarà necessario generare un dataset interamente sintetico per testare le funzionalità; Var Group fornirà un dataset di query aziendali reali per la validazione della cache semantica.

== Dashboard FinOps e Monitoraggio Costi
- Frequenza di Aggiornamento: La dashboard per il governo economico dell'IA dovrà garantire un aggiornamento delle metriche in tempo reale (o near real-time), riducendo al minimo la latenza.
- Tracciamento dei Costi: Il sistema FinOps non dovrà limitarsi a calcolare il risparmio sui token di inferenza dei modelli generativi, ma dovrà tracciare in modo aggregato tutti i costi. Questo include l'obbligo di computare e decurtare anche i costi derivanti dall'utilizzo delle API di embedding (necessarie per il funzionamento della similarity search).

= Conclusioni
L'incontro condiviso ha permesso di definire con maggiore accuratezza i confini implementativi del Layer di Cache e della Dashboard FinOps, sciogliendo i dubbi architetturali legati a LiteLLM e al calcolo dei costi. Il Gruppo Astrum ringrazia i referenti di Var Group per i chiarimenti forniti.