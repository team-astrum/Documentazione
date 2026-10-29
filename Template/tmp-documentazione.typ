/* MODELLO PER DOCUMENTAZIONE DI PROGETTO
Il seguente modello può essere incorporato nelle presentazioni tramite comando: #import "../../Template/tmp-documentazione.typ": conf, usecase, G
Le variabili vengono istanziate all'inizio di ciascuna presentazione.
*/

#import "g-func.typ": G

// Set parametri di stile
#let font = "Inter"

#let logo = "./Assets/logo.svg"

#let deco-line = rgb("#E5E9ED")
#let txt-color = rgb("#1F2937")
#let dark-accent = rgb("#1E3A87")
#let light-accent = rgb("#2563EB")
#let txt-gray = rgb("#626973")

// Template per ciascun caso d'uso
#let usecase(id, titolo, attore, pre, post, scenario) = {
  set par(justify: false)
  table(
    columns: (30%, 70%),
    stroke: 0.5pt + deco-line,
    align: (col, row) => if col == 0 { center + horizon } else { left + horizon },
    
    // Intestazione
    table.cell(colspan: 2)[
      #text(weight: "bold")[#id - #titolo]
    ],
    
    // Campi della tabella
    [*Attore Primario*], [#attore],
    [*Precondizioni*], [#pre],
    [*Postcondizioni*], [#post],
    [*Scenario principale*], [#scenario]
  )
}

#let conf(
  titolo: none,
  status: none,   // Valori: In bozza, Approvato
  utilizzo: none,   // Valori: Interno, Esterno
  redazione: (),
  verifica: (),
  approvazione: none,
  changelog: (),    // Array per il registro modifiche
  body
) = {
  set text(font: font, size: 12pt, fill: txt-color)
  set par(justify: true)
  set heading(numbering: "1.1. ")

  show heading: it => {
    set text(fill: dark-accent, weight: "bold")
    block(below: 0.5cm, above: 0.5cm, it)
  }

  set list(marker: ([•], [◦], [-]))    // Formattazione punti elenco

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
          align(left)[*Astrum* - Documento #utilizzo],
          align(right)[#titolo]
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
        #grid(
          columns: (1fr, 1fr),
          align(left)[Versione: #if changelog.len() > 0 { changelog.first().ver } else { none }],
          align(right)[Pagina
          #if here().page-numbering() == "I" [
              #counter(page).display("I")
            ] else [
              #counter(page).display("1 / 1", both: true)
            ]
          ]
        )
      ]
    }
  )

  // Metadati letti dal sito (non producono alcun output visibile)
  [#metadata((
    categoria: "documento",
    titolo: titolo, tipo: utilizzo,
    versione: if changelog.len() > 0 { changelog.first().ver } else { none },
    data-modifica: if changelog.len() > 0 { changelog.first().data } else { none },
    status: status
  )) <info>]

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
    #text(size: 28pt, weight: "bold", fill: light-accent)[#titolo]
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
    
    #v(3cm)
    
    // Tabella con dati del documento
    #align(center)[
      #table(
        columns: (120pt, 200pt),
        align: (right, left),
        stroke: 0.5pt + deco-line,
        fill: white,
        
        [*Versione*], [#if changelog.len() > 0 { changelog.first().ver } else { none }],
        [*Data*], [#if changelog.len() > 0 { changelog.first().data } else { none }],
        [*Stato*], [#status],
        [*Uso*], [#utilizzo],
        [*Redazione*], [#redazione.join(", ")],
        [*Verifica*], [#verifica.join(", ")],
        [*Approvazione*], [#approvazione]
      )
    ]
    #v(1fr)
  ]

  pagebreak()
  counter(page).update(1)

  // Registro delle modifiche al documento
  if changelog.len() > 0 {
    heading(numbering: none, outlined: false)[Registro delle modifiche]
    table(
      columns: (auto, 1fr),
      stroke: 0.5pt + deco-line,
      inset: (top: 8pt, bottom: 8pt),
      
      // Intestazione
      table.header(
        table.cell(align: center + horizon)[#text(weight: "bold")[Versione]],
        table.cell(align: left + horizon)[#text(weight: "bold")[Dettagli]]
      ),
      
      // Mappatura delle voci
      ..changelog.map(entry => (
        table.cell(
          stroke: (bottom: none), // Rimuove la linea separatrice sotto
          inset: (bottom: 4pt),
          align: center + top
        )[#text(weight: "bold")[v#entry.ver]],
        table.cell(
          stroke: (bottom: none),
          inset: (bottom: 4pt),
          align: left + top
        )[#entry.desc],
        
        table.cell(
          stroke: (top: none),
          align: center + bottom
        )[#text(size: 10pt, fill: txt-gray)[#entry.data]],
        table.cell(
          stroke: (top: none),
          align: left + bottom
        )[
          #text(size: 10pt, fill: txt-gray)[
            #entry.ruolo: #entry.autore
            #if "verificatore" in entry and entry.verificatore != none [
              #h(0.5em) #text(fill: deco-line)[|] #h(0.5em) 
              Verificatore: #entry.verificatore
            ]
          ]
        ]
      )).flatten()
    )
    
    pagebreak()
  }

  // Indice
  heading(numbering: none, outlined: false)[Indice]
  set outline.entry(fill: repeat(text(fill: deco-line)[ . ]))
  outline(title: none, indent: auto)    // Rimozione di titolo preimpostato
  pagebreak()

  set page(numbering: "1 / 1")
  counter(page).update(1)   // Reset del conteggio
  
  body

  if lower(status) == "approvato" {
    v(1.5cm)
    text(weight: "bold", style: "italic")[#approvazione]
    linebreak()
    [Firma del responsabile]
  }
}