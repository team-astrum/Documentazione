#import "../../Template/tmp-verbale.typ": conf, decisioni, G

#show: conf.with(
  tipo: "Interno", 
  data: "2026-10-29",
  ora-inizio: "10:30-13:00",
  ora-fine: "17:00-18:30",
  luogo: "Discord",
  azienda: none,
  presenti: ("Thomas Morettin ", "Gianluca Bacco ", "Corrado Bacco", "Gianluca Brotto ", "Matteo De Col", "Filippo De Guio", "Samuele Gobbi"),
  assenti: (),
  responsabile: "Filippo De Guio",
  redattore: "De Col Matteo",
  verificatore: "Corrado Bacco",
  changelog: (
    (ver: "1.0.0", data: "2026-10-30", autore: "Filippo De Guio", ruolo: "Responsabile", desc: "Approvazione verbale."),
    (ver: "0.0.1", data: "2026-10-30", autore: "De Col Matteo", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Creazione e stesura bozza verbale."),
  )
)

= Introduzione
Il presente documento attesta che, in data 29 ottobre 2026, il gruppo si è incontrato due volte per prendere le seguenti decisioni.

= Ordine del Giorno
- Controllo finale sulla documentazione per la candidatura.
- Stesura della lettera di presentazione.
- Analisi tecnica sulla visualizzazione dei Diari di Bordo nella dashboard.
- Integrazione tecnica per la visualizzazione dei verbali esterni firmati.
- Stesura e aggiornamento del Diario di Bordo.
- Approvazione formale delle Norme di Progetto (Way of Working) e della Dichiarazione degli Impegni.
- Invio ufficiale della candidatura al prof. Vardanega.

= Resoconto e Decisioni - Incontro 10:30 - 13:00
- Revisione Documentazione e Lettera: Il team ha effettuato un controllo qualitativo finale su tutti i documenti redatti. Contestualmente, è stata scritta in modo collaborativo la Lettera di Presentazione da allegare all'email di candidatura.
- Dashboard e Diari di Bordo: Si è tenuto un confronto tecnico su come gestire e visualizzare i log del Diario di Bordo all'interno della dashboard di progetto. È stato deciso di procedere sfruttando una variabile locale per consentire ai soli membri del team la visualizzazione dei diari di bordo.
- Gestione PDF Verbali Esterni: Confronto sull'integrazione dei verbali esterni firmati tramite Google Drive.

= Resoconto e Decisioni - Incontro 17:00 - 18:30
- Diario di Bordo: È stato compilato e aggiornato il Diario di Bordo con le ultime attività svolte, i nuovi dubbi e le prossime tasks del team.
- Approvazione Documenti: Il gruppo ha votato e approvato formalmente all'unanimità la versione di rilascio (v1.0.0) delle Norme di Progetto e del documento relativo alla Dichiarazione degli Impegni.
- Invio Candidatura: A conclusione dei lavori, è stata inviata ufficialmente tramite posta elettronica la mail contenente la lettera di presentazione e i link ai documenti di candidatura, indirizzata al prof. Vardanega. Il team entra ora formalmente in attesa di riscontro per l'assegnazione del capitolato.