#import "../../Template/tmp-verbale.typ": conf, azioni, G

#show: conf.with(
  tipo: "Interno", 
  data: "2026-11-14",
  ora-inizio: "10:30",
  ora-fine: "11:30",
  luogo: "Discord",
  azienda: none,
  presenti: ("Corrado Bacco", "Gianluca Brotto", "Matteo De Col", "Filippo De Guio", "Samuele Gobbi", "Gianluca Bacco"),
  assenti: ("Thomas Morettin",),
  responsabile: "Gianluca Bacco",
  redattore: "Samuele Gobbi",
  verificatore: "Filippo De Guio, Matteo De Col",
  changelog: (
    (ver: "0.0.1", data: "2026-11-16", autore: "Samuele Gobbi", ruolo: "Amministratore", verificatore: "", desc: "Stesura Iniziale Documento."),
  )
)

= Introduzione
Il presente documento attesta che in data 2026-11-14 il gruppo si è incontrato per discutere i punti all'interno dell'ordine del giorno.\
Inoltre in data 2026-11-11 il gruppo ha avuto un incontro informale per discutere i seguenti aspetti:
- confronto sulla gestione dei #G("Branch") di sviluppo (con annesse #G("PR (Pull Request)"));
- confronto sulla partecipazione dei membri del gruppo alla presentazione dei diari di bordo;
- emersa necessità di mettersi in contatto con l'azienda proponente.

= Ordine del giorno
Il presente verbale interno è costruito sui seguenti punti:
1. assegnazione dei ruoli ai membri del gruppo per lo sprint S2 (2026-11-14 - 2026-11-27);
2. redazione collettiva del Diario di bordo da esporre in data 2026-11-16 a cura del responsabile;
3. scrittura ed invio email di richiesta incontro di allineamento con l'azienda proponente;
4. breve confronto sulla struttura del documento del piano di progetto;
5. messa per iscritto quantitativo delle ore lavorate dai membri del gruppo durante lo sprint S1 (2026-11-04 - 2026-11-13);
6. varie ed eventuali.

= Assegnazione dei ruoli
Il primo punto all'o.d.g. viene chiuso con la seguente suddivisione dei ruoli per lo sprint S2:
- *responsabile*: Gianluca Bacco;
- *amministratore*: Samuele Gobbi;
- *analisti*: Corrado Bacco, Gianluca Brotto e Thomas Morettin;
- *progettista*: -;
- *programmatore*: -;
- *verificatori*: Filippo De Guio, Matteo De Col.

= Messa per iscritto delle ore lavorate
Come da documento di piano di progetto, durante lo sprint S1 (2026-11-04 - 2026-11-13) i membri del gruppo hanno lavorato le seguenti ore:
- *Corrado Bacco* (responsabile): 3 ore;
- *Gianluca Bacco* (analista): 2 ore;
- *Gianluca Brotto* (verificatore): 4 ore;
- *Matteo De Col* (analista): 2 ore;
- *Filippo De Guio* (analista): 3 ore;
- *Samuele Gobbi* (verificatore): 3 ore;
- *Thomas Morettin* (amministratore): 6 ore.

= Redazione collettiva del Diario di bordo
Alla luce dell'avanzamento lavorativo del team, dalla data 2026-11-09 al 2026-11-13, la rendicontazione consta dei seguenti punti:
- continuazione dello studio autonomo delle tecnologie suddivise;
- inizio della stesura del documento Analisi dei Requisiti a cura degli analisti;
- richiesta incontro di allineamento con l'azienda proponente;
- inizio della stesura del documento Piano di Progetto a cura del responsabile.
Per quanto concerne l'avanzamento nel prossimo periodo si è deciso di riportare i seguenti punti:
- continuare con lo studio autonomo delle tecnologie suddivise;
- continuare la stesura del documento Analisi dei Requisiti a cura degli analisti;
- continuare la stesura del documento Piano di Progetto a cura del responsabile.
Le maggiori difficoltà riscontrate dai membri del gruppo sono le seguenti:
- Per tutti i membri, difficoltà nella gestione dei merge e nella risoluzione di conflitti nella repository GitHub.
Non sono stati riscontrati dubbi rilevanti da esporre al committente.

= Richiesta di incontro con l'azienda proponente
La mail di richiesta incontro è stata inviata il 2026-11-14 alle ore 11:05.\ Per garantire un incontro efficace, il gruppo ha esplicitatamente richiesto disponibilità per uno slot libero durante la settimana del 2026-11-23, questo permette a tutti i membri del gruppo di aver tempo sufficiente per aver un buon livello di conoscenza delle tecnologie così da poter porre domande più mirate e precise.\

= Decisioni concordate
Le decisioni intraprese durante la riunione sono le seguenti:
- continuazione della redazione del documento Analisi dei Requisiti a cura degli analisti;
- continuazione della redazione del documento Piano di Progetto a cura del responsabile;
- invio della mail di richiesta incontro con l'azienda proponente.
- aggiornamento valori cruscotto a cura dell'amministratore.

= Azioni da intraprendere
#azioni(
  [Redazione nuove sezioni del documento di Analisi dei requisiti], [Corrado Bacco, Gianluca Brotto, Thomas Morettin], [-], [2026-11-27],
  [Aggiornamento valori cruscotto riferiti ad S1], [Samuele Gobbi], [\#25], [2026-11-27]
)