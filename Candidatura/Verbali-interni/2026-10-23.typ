#import "../../Template/tmp-verbale.typ": conf, decisioni, G

#show: conf.with(
  tipo: "Interno", 
  data: "2026-10-23",
  ora-inizio: "14:00",
  ora-fine: "18:00",
  luogo: "Discord",
  azienda: none,
  presenti: ("Thomas Morettin ", "Gianluca Bacco ", "Corrado Bacco", "Gianluca Brotto ", "Matteo De Col", "Filippo De Guio", "Samuele Gobbi"),
  assenti: (),
  responsabile: "Filippo De Guio",
  redattore: "De Col Matteo",
  verificatore: "Corrado Bacco",
  changelog: (
    (ver: "1.0.0", data: "2026-10-23", autore: "Filippo De Guio", ruolo: "Responsabile", desc: "Approvazione verbale."),
    (ver: "0.0.1", data: "2026-10-23", autore: "De Col Matteo", ruolo: "Redattore", verificatore: "Corrado Bacco", desc: "Creazione e stesura bozza verbale."),
  )
)

= Introduzione
Il presente documento attesta che, in data 23 ottobre 2026, il gruppo si è incontrato per prendere le decisioni seguenti.

= Ordine del giorno
- Continuazione stesura bozza del preventivo.
- Definizione degli Sprint e delle logiche di rotazione dei ruoli.
- Redazione della prima bozza del Way of Working.
- Stesura delle conclusioni per il documento di valutazione dei capitolati.

= Resoconto e Decisioni
- Preventivo Costi: Il gruppo ha continuato la stesura del preventivo.
Rotazione Ruoli: Sono state stabilite le policy per la rotazione delle responsabilità (Responsabile, Amministratore, Analista, Progettista, Programmatore, Verificatore) tra i vari Sprint, al fine di garantire un carico di lavoro equo tra tutti i membri.
- Way of Working: È stata prodotta una prima bozza del WoW (Way of Working), definendo le regole interne per la comunicazione, l'utilizzo dei repository Git e la stesura della documentazione in Typst.
- Candidatura: Sono state ultimate e approvate all'unanimità le conclusioni per la Valutazione dei Capitolati, ufficializzando la scelta del progetto per cui il Gruppo Astrum presenterà la candidatura.