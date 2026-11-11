#import "../../Template/tmp-verbale.typ": conf, azioni, G

#show: conf.with(
  tipo: "Interno", 
  data: "2026-11-07",
  ora-inizio: "10:30",
  ora-fine: "11:30",
  luogo: "Discord",
  azienda: none,
  presenti: ("Thomas Morettin", "Corrado Bacco", "Gianluca Brotto", "Matteo De Col", "Filippo De Guio", "Samuele Gobbi"),
  assenti: (),
  responsabile: "Gianluca Bacco",
  redattore: "Thomas Morettin",
  verificatore: "Gianluca Brotto, Samuele Gobbi",
  changelog: (
    (ver: "0.1.0", data: "2026-11-07", autore: "Thomas Morettin", ruolo: "Amministratore", verificatore: "Gianluca Brotto, Samuele Gobbi", desc: "Redazione del documento post meeting."),
    (ver: "0.0.1", data: "2026-11-05", autore: "Thomas Morettin", ruolo: "Amministratore", verificatore: "Gianluca Brotto, Samuele Gobbi", desc: "Impostazione iniziale documento."),
  )
)

= Introduzione
Il presente documento attesta che in data 2026-11-07 il gruppo si è incontrato per discutere i punti all'interno dell'ordine del giorno.\
In data 2026-11-03 il gruppo ha avuto un incontro informale per discutere i seguenti aspetti:
- preferenze circa le tecnologie da studiare in autonomia;
- confronto sull'aggiunta dei capitoli per decisioni e azioni nei verbali, consigliata dal committente Prof. Tullio Vardanega;
- miglioramento dei canali di comunicazione WhatsApp (creazione di una community per suddivisione topic) e Discord (possibilità di assegnazione ruoli e aggiunta canali).

= Ordine del giorno
Il presente verbale interno è costruito sui seguenti punti:
1. assegnazione dei ruoli ai membri del gruppo per lo sprint S1 (2026-11-04 - 2026-11-13);
2. redazione collettiva del Diario di bordo da esporre in data 2026-11-09 a cura dell'amministratore (per giustificato impedimento del responsabile);
3. allineamento dei membri del gruppo circa il capitolo 6 del documento Norme di Progetto e relativi dubbi/perplessità da chiarire in data 2026-11-09;
4. varie ed eventuali.

= Suddivisione delle tecnologie (2026-11-03)
A seguito dell'aggiudicazione dell'appalto *C0 - AIRA: AI Requests Automation* dell'azienda _Sanmarco Informatica S.p.A._, il gruppo ha deciso di suddividere le tecnologie consigliate come segue:
- *interfaccia amministrativa* (_Angular_ e _TypeScript_) a cura di Samuele Gobbi e Thomas Morettin;
- *core engine*:
  - *motore di elaborazione* (_Java Spring Boot_) a cura di Matteo De Col e Gianluca Brotto;
  - *persistenza dei dati* (_SQL_) a cura di Corrado Bacco.
- *AI & orchestration* (_LLM_ e _LangChain4j_) a cura di Filippo De Guio e Gianluca Bacco;
- *elaborazione non testuale*:
  - *speech* (_Whisper_ e _Google Speech_) a cura di Filippo De Guio e Gianluca Bacco;
  - *#G("OCR (Optical Character Recognition)", def: "Tecnologia che converte immagini di testo stampato, scritto a mano o scansionato in testo digitale modificabile e ricercabile da un computer.")* (_Tesseract_ e _EasyOCR_) a cura di Corrado Bacco.
Ciascun membro del gruppo si riserva la possibilità di studiare tecnologie differenti da quelle assegnatogli per fornire maggiore supporto su particolari temi.

= Assegnazione dei ruoli
Il primo punto all'o.d.g. viene chiuso con la seguente suddivisione dei ruoli per lo sprint S1:
- *responsabile*: Corrado Bacco;
- *amministratore*: Thomas Morettin;
- *analisti*: Gianluca Bacco, Matteo De Col e Filippo De Guio;
- *progettista*: -;
- *programmatore*: -;
- *verificatori*: Gianluca Brotto e Samuele Gobbi.

= Redazione collettiva del Diario di bordo
Alla luce dell'avanzamento lavorativo del team, dalla data 2026-11-03 al 2026-11-06, la rendicontazione consta dei seguenti punti:
- inserita nelle Norme di Progetto la definizione di #G("DoD (Definition of Done)")\;
- creazione di convenzioni per la gestione del flusso di #G("CI (Continuous Integration)") all'interno della piattaforma #G("GitHub")\;
- allineamento del gruppo sul punto precedente;
- predisposizione della piattaforma #G("GitHub") per lavorare con #G("Gitflow workflow");
- inserimento regole di branch protection e minimum review per i repository dell'organizzazione;
- studio autonomo, da parte di tutti i membri del gruppo, sulle tecnologie suddivise in data 2026-11-03;
- decisione sul luogo di ritrovo del gruppo post Diario di bordo.
Per quanto concerne l'avanzamento nel prossimo periodo si è deciso di riportare i seguenti punti:
- continuare con lo studio autonomo delle tecnologie suddivise;
- iniziare la stesura del documento Analisi dei Requisiti a cura degli analisti.
Le maggiori difficoltà riscontrate dai membri del gruppo sono le seguenti:
- per le figure di verificatori, difficoltà nel comprendere le modifiche da approvare all'interno delle pull requests;
- per tutti i membri, difficoltà nel seguire facilmente il processo di CI (Continuous Integration) definito nelle Norme di Progetto.
Per quanto riguarda i dubbi pervenuti durante i lavori si esporranno le seguenti domande al committente:
- delucidazioni circa l'eliminazione dei branch di sviluppo dopo la corretta verifica del lavoro svolto al loro interno;
- delucidazioni circa i canali/documenti da utilizzare per la rendicontazione delle ore dei membri del gruppo.

= Allineamento circa nuove Norme di Progetto
Tutti i membri del team hanno preso visione del capitolo 6 delle Norme di Progetto, redatto durante la prima settimana dello sprint S1.\
Il capitolo espone le convenzioni adottate all'interno della piattaforma #G("GitHub") per attuare il processo di #G("CI (Continuous Integration)").
I membri del team non riportano dubbi sostanziali, in quanto è stata compresa la totalità del capitolo. Ci si riserva la possibilità di chiarire perplessità future, derivanti dall'applicazione concreta di queste convenzioni.

= Decisioni concordate
Le decisioni intraprese durante la riunione sono le seguenti:
- iniziare la redazione dell'Analisi dei Requisiti a cura degli analisti;
- comprendere la necessità di un incontro con l'azienda proponente e relative domande da porre.

= Azioni da intraprendere
#azioni(
  [Redazione dell'introduzione al documento Analisi dei Requisiti], [Gianluca Bacco, Matteo De Col e Filippo De Guio], [\#16], [2026-11-13]
)