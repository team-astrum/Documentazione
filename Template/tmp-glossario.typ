/* MODELLO PER GLOSSARIO
Il seguente modello può essere incorporato nel documento tramite comando: #import "Template/tmp-glossario.typ": conf
Le variabili vengono istanziate all'inizio di ciascuna presentazione.
*/

// Set parametri di stile
#let font = "Inter"

#let logo = "./Assets/logo.svg"

#let deco-line = rgb("#E5E9ED")
#let txt-color = rgb("#1F2937")
#let dark-accent = rgb("#1E3A87")
#let light-accent = rgb("#2563EB")
#let txt-gray = rgb("#626973")

// Voce del glossario: termine (sotto-capitolo) + definizione in un riquadro
#let termine(nome, definizione) = {
  // Prima lettera maiuscola, resto invariato
  let cl = nome.clusters()
  let nome-cap = upper(cl.first()) + cl.slice(1).join()

  block(
    width: 100%,
    breakable: false,
    inset: 10pt,
    radius: 4pt,
    stroke: (left: 2pt + light-accent, rest: 0.5pt + deco-line),
    above: 0.8em,
    below: 0.8em,
  )[
    // Resta un heading di livello 2, quindi compare nell'indice
    #show heading: it => block(
      above: 0pt,
      below: 0.5em,
      text(fill: dark-accent, weight: "bold", size: 1.1em, it.body),
    )
    #heading(level: 2)[#nome-cap]
    #definizione
  ]
}

#let conf(
  body
) = {
  set text(font: font, size: 12pt, fill: txt-color)
  set par(justify: true)

  show heading: it => {
    set text(fill: dark-accent, weight: "bold")
    block(below: 0.5cm, above: 0.5cm, it)
  }

  set page(
    paper: "a4",
    numbering: "I",
    margin: (x: 2.5cm, y: 2.5cm),
    // Inserimento header (no in frontespizio)
    header: context {
      if here().page() > 1 [
        #set text(size: 10pt, fill: txt-gray)
        #grid(
          columns: (1fr, 1fr),
          align(left)[*Astrum* - Documento Interno],
          align(right)[Glossario]
        )
        #v(-0.5em)
        #line(length: 100%, stroke: 0.5pt + light-accent)
      ]
    },

    // Inserimento footer (no frontespizio)
    footer: context {
      if here().page() > 1 [
        #line(length: 100%, stroke: 0.5pt + deco-line)
        #v(-0.25em)
        #set text(size: 8pt, fill: txt-gray)
        #align(center)[Pagina
        #if here().page-numbering() == "I" [
            #counter(page).display("I")
          ] else [
            #counter(page).display("1 / 1", both: true)
          ]
        ]
      ]
    }
  )

  // Decorazione per frontespizio
  let details = place(bottom + right, dx: 2cm, dy: 4cm)[
    #box(width: 0pt, height: 0pt)[
      // Archi di decorazione in background
      #place(center, circle(radius: 4cm, stroke: 0.5pt + deco-line))
      #place(center, circle(radius: 8cm, stroke: 0.5pt + deco-line))
      #place(center, circle(radius: 16cm, stroke: 0.5pt + deco-line))
      #place(center, circle(radius: 24cm, stroke: 0.5pt + deco-line))
    ]
  ]

  align(center)[
    #details
    #v(1fr)
    #text(size: 28pt, weight: "bold", fill: light-accent)[Glossario]
    #grid(    // Logo UniPD + logo del gruppo
      columns: (auto, auto, auto),
      gutter: 0.5cm,
      align: horizon,

      image("./Assets/logo-unipd.svg", height: 2cm),
      line(angle: 90deg, length: 2cm, stroke: 0.5pt + deco-line),
      image(logo, height: 1cm)
    )
    #v(1cm)
    #text(size: 14pt, style: "italic")[Progetto di Ingegneria del Software \
    Università di Padova - A.A. 26 / 27]
    #v(1fr)
  ]

  pagebreak()
  counter(page).update(1)

  // Indice
  heading(numbering: none, outlined: false)[Indice]
  set outline.entry(fill: repeat(text(fill: deco-line)[ . ]))
  outline(title: none, indent: auto)    // Rimozione di titolo preimpostato
  pagebreak()

  set page(numbering: "1 / 1")
  counter(page).update(1)   // Reset del conteggio
  
  body
}