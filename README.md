# Repository documentale
Il seguente repository contiene tutta la documentazione inerente al progetto del gruppo Astrum, del corso di **Ingegneria del Software [SC01103936]** presso l'Università di Padova (L.T. Informatica, A.A. 2026/27).

## Contenuto del repository
Il lavoro è suddiviso per milestone di progetto:
- **Candidatura**, contenente:
  - lettera di candidatura rivolta ai committenti;
  - documenti di analisi dei capitolati presentati dalle aziende proponenti;
  - preventivo costi/ripartizione ore per l'azienda proponente scelta dal gruppo;
  - verbali interni/esterni scritti in fase di analisi e preparazione della candidatura;
  - diari di bordo svoltisi in data 2026-10-28 e 2026-11-02.
 
## GitHub Actions
Il seguente repository fa uso della seguente GitHub Action:
- [typst-compile.yml](.github/workflows/typst-compile.yml) per svolgere le seguenti operazioni:
   - compilare i documenti in linguaggio Typst a ciascun commit;
   - eseguire il deploy degli artefatti (documenti in linguaggio Typst) in formato PDF;
   - generare, tramite script Python, il file [manifest.json](https://team-astrum.github.io/Documentazione/manifest.json) contenente i metadati dei documenti;
   - generare, tramite script Python, il file di glossario per automatizzarne e semplificarne la scrittura.
 
## Visualizzazione dei documenti
Tutti i documenti compilati in formato PDF sono reperibili all'interno del [sito web "cruscotto"](https://team-astrum.github.io/) del gruppo _Astrum_.
