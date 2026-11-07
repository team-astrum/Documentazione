#import "../../Template/tmp-slides.typ": conf, slide-title

#show: conf.with(
  sprint: 1,
  data: "2026-11-09",
  membri: (
    "Corrado Bacco": "Responsabile",
    "Gianluca Bacco": "Analista",
    "Gianluca Brotto": "Verificatore",
    "Matteo De Col": "Analista",
    "Filippo De Guio": "Analista",
    "Samuele Gobbi": "Verificatore",
    "Thomas Morettin": "Amministratore"
  )
)

#slide-title("Retrospettiva: attività svolte")

*Attività svolte nel periodo di riferimento:*
- inserita nelle Norme di Progetto la definizione di DoD (Definition of Done);
- creazione di convenzioni per la gestione del flusso di CI (Continuous Integration) all'interno della piattaforma GitHub;
- allineamento del gruppo sul punto precedente;
- predisposizione della piattaforma GitHub per lavorare con Gitflow workflow;
- inserimento regole di branch protection e minimum review per i repository dell'organizzazione;
- studio autonomo, da parte di tutti i membri del gruppo, sulle tecnologie suddivise in data 2026-11-03;
- decisione sul luogo di ritrovo del gruppo post Diario di bordo.

#pagebreak()

#slide-title("Pianificazione, difficoltà e dubbi")

*Attività da svolgere nel prossimo periodo:*
- continuare con lo studio autonomo delle tecnologie suddivise;
- iniziare la stesura del documento Analisi dei Requisiti a cura degli analisti.

*Difficoltà riscontrate:*\
_Figure di verificatori:_ difficoltà nel comprendere le modifiche da approvare all'interno delle pull requests;\
_Tutti i membri:_ difficoltà nel seguire facilmente il processo di CI (Continuous Integration) definito nelle Norme di Progetto.

#pagebreak()

*Dubbi per il committente:*
- i branch di sviluppo, dopo che le modifiche sono state approvate correttamente è possibile eliminarli?
- la rendicontazione delle ore lavorate durante lo sprint basta che venga inserita all'interno del cruscotto o è opportuno trascriverla all'interno del Piano di Progetto?