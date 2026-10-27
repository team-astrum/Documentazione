// Funzione G da importare nei vari capitoli del progetto
#let G(term, def: none, impl: none) = {
  // Stampa il termine con il pedice G e un link al PDF del glossario
  link("https://team-astrum.github.io/Documentazione/glossario.pdf")[#term#sub[G]]
}