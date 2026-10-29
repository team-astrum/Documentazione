#import "../../Template/tmp-verbale.typ": conf, decisioni, G

#show: conf.with(
  tipo: "Interno", 
  data: "2026-10-26",
  ora-inizio: "15:30",
  ora-fine: "17:00",
  luogo: "Discord",
  azienda: none,
  presenti: ("Thomas Morettin ", "Gianluca Bacco ", "Corrado Bacco", "Gianluca Brotto ", "Matteo De Col", "Filippo De Guio", "Samuele Gobbi"),
  assenti: (),
  responsabile: "Filippo De Guio",
  redattore: "De Col Matteo",
  verificatore: "Corrado Bacco",
  changelog: (
    (ver: "1.0.0", data: "2026-10-26", autore: "Filippo De Guio", ruolo: "Responsabile", desc: "Approvazione verbale."),
    (ver: "0.0.1", data: "2026-10-26", autore: "De Col Matteo", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Creazione e stesura bozza verbale."),
  )
)

= Introduzione
Il presente documento attesta che, in data 26 ottobre 2026, il gruppo si è incontrato per prendere le decisioni seguenti.

= Ordine del giorno
- Discussione e approvazione del preventivo ore finale.
- Definizione delle policy di versionamento dei documenti.
- Introduzione e discussione sulle regole di stesura del Glossario.
- Discussione e finalizzazione dell'infrastruttura di Continuous Delivery.
- Pianificazione del prossimo incontro.

= Resoconto e Decisioni
- Preventivo Finale: Il gruppo ha effettuato una revisione conclusiva del preventivo, validando definitivamente il monte ore, i costi stimati e la ripartizione dei ruoli tra i componenti. Il documento resta ancora in bozza in attesa dell'analisi dei rischi e mitigazione.
- Versionamento: Sono state discusse e definite le norme di versionamento per il repository documentale.
- Glossario: È stata avviata una prima analisi sull'impostazione del Glossario, condividendo le linee guida generali su come individuare e descrivere i termini tecnici e di dominio per evitare ambiguità nella documentazione.
- Continuous Delivery: Il gruppo ha discusso e finalizzato le strategie e le scelte tecnologiche per la Continuous Delivery. Sono state definite le logiche per i workflow automatizzati al fine di garantire un rilascio continuo, tracciabile e sicuro.
- Prossimo Incontro: La successiva riunione di allineamento è stata fissata per il 2026-10-27 alle ore 14:30.