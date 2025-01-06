// Define the document's variables
#let project(
  type: "",
  title: "",
  subtitle: "",
  author: "",
  adviser: "",
  university: "",
  faculty: "",
  dateandplace: "",
  works: "",
  abstract: "",
  index: none,
  abstracto: "",
  dedication: "",
  acknowledgements: "",
  resume: "",
  textfont: "",
  codefont: "",
  universitypng: "",
  facultypng: "",
  
  // Body or "main.typ" data
  body,
) = {
  // Set the document's basic properties.
  set document(
    author: author,
    title: title,
  )
  set page(
    paper: "us-letter",
  )
  set text(
    font: textfont,
    size: 12pt,
    hyphenate: false,
    lang: "es",
  )
  set smartquote(quotes: "“”")
  set heading(
    numbering: "1.1."
  )
  show heading: it => block[
    #counter(heading).display()
    #text(it.body)
    #v(1em)
  ]
  set par(
    justify: true,
  )

  // Define bibliography style
  show bibliography: it => {
    set text(size: 10pt)
    set par(justify: false)
    it
  }

  // Code block style
  show raw: it => {
    if(it.lang != none){
        align(
            end,
            box(
                fill: cmyk(0%, 0%, 0%, 0%),
                inset: 4pt,
                radius: 4pt,
                if(it.lang == "c") [ // Modify this to add more languages
                    .ino
                ] else [
                    .#it.lang
                ]
            ),
        )
    }

    set text(font: codefont, size: 10pt)
    set par(justify: false)
    it
  }

  // Style for code blocks
  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  // Style for code lines
  show raw.where(block: true): block.with(
    width: 100%,
    fill: luma(240),
    inset: 10pt,
    radius: 8pt,
    above: 1em,
    below: 2em,
  )

  show figure: set block(breakable: true) // Allow figures to break across pages

  show figure: it => {
    v(1em)
    align(center,
        box(
            stroke: 1.5pt + cmyk(0%, 0%, 0%, 30%),
            inset: 10pt,
            radius: 10pt,
            [
              *#it.supplement*
              *#it.counter.display(it.numbering)**.*
              #it.caption.body
              #line(
                  length: 100%,
                  stroke: 1.5pt + cmyk(0%, 0%, 0%, 30%),
              )
              #it.body
            ]
        )
    )
    v(1em)
  }

  // Style for hyperlinks
  show link: it => {
    box(
        fill: cmyk(20%, 10%, 0%, 3%),
        inset: 3pt,
        radius: 3pt,
        baseline: 15%,
        [
          #set text(
              font: codefont,
              size: 9pt,
              fill: cmyk(100%, 100%, 0%, 7%),
          )
          #it
        ]
    )
  }

  // Style for lists
  set list(
    indent: 1em,
    spacing: 1em,
  )

  // First page of the document
  set page(
    header: align(left)[
      #stack(
        dir: ltr,
        stack(
          dir: ttb,
          image(universitypng, width: 14%),
        ),
        spacing: 72%,
        stack(
          dir: ttb,
          image(facultypng, width: 16%),
        ),
      )
    ],
    header-ascent: -5em,
  )

  
  align(center)[
    #text(university)
    \
    #text(faculty)
    #v(7em)

    #text(2em, type)
    #v(6em)

    #text(1.6em, weight: "bold", title)
    \
    \
    #text(1.2em, subtitle)
    #v(5em)

    #text(1.6em, weight: "bold", author)
    \
    #text(1.2em, [Presenta])
    #v(4em)

    #text(weight: "bold", adviser)
    \
    Asesor

    #align(end + bottom)[
      #text(dateandplace)
    ]
  ]

  pagebreak()

  // Set the page's header and footer properties.
  set page(
    header: counter(page).display(n => { // Header content
        if page.flipped [ // If the page is flipped
          #stack(
            dir: ltr,
            align(left,
              text(8pt, weight: "bold", style: "italic", fill: cmyk(0%, 0%, 0%, 60%), title)
            ),
            align(right,
              text(8pt, weight: "bold", fill: cmyk(0%, 0%, 0%, 60%), university + linebreak() + faculty)
            ),
          )
        ] else [
          #if calc.odd(n) [ // If the page number is odd
            #set align(left)
            #text(8pt, weight: "bold", style: "italic", fill: cmyk(0%, 0%, 0%, 60%), title)
          ] else [ // If the page number is even
            #set align(right)
            #text(8pt, weight: "bold", fill: cmyk(0%, 0%, 0%, 60%), university + linebreak() + faculty)
          ]
        ]
      }
    ),
    footer: counter(page).display(o => { // Footer content
        if page.flipped [ // If the page is flipped
          #set align(center)
          #counter(page).display()
        ] else [
          #if calc.odd(o) [ // If the page number is odd
            #set align(left)
            #counter(page).display()
          ] else [ // If the page number is even
            #set align(right)
            #counter(page).display()
          ]
        ]
      }
    ),
    header-ascent: 2.5em, // Header height
  )

  // Abstract page of the document
  align(center)[
    
    #v(8em)

    = Abstract <abstract>

    #text(abstract)

    #v(8em)

    = Abstracto <abstracto>

    #text(abstracto)
  ]

  pagebreak()

  // Dedication page of the document
  heading("Dedicatoria")

  text(dedication)

  pagebreak()

  // Acknowledgements page of the document
  heading("Agradecimientos")

  text(acknowledgements)

  pagebreak()

  // Summary page of the document
  heading("Resumen")

  text(resume)

  pagebreak()

  // Table of contents
  heading("Índice")
  outline(
    title: none,
    depth: 4,
    indent: true,
    fill: none,
  )

  pagebreak()

  // Body of the document, this is were the all the info of the "main.typ" file is added.
  body

  pagebreak()

  heading("Listas")

  // List of diagrams
  heading(level: 2, "Lista de Diagramas")
  outline(
    title: none,
    target: figure.where(kind: "diagram"),
    indent: true,
    fill: none,
  )

  // List of schematics
  heading(level: 2, "Lista de Esquemas")
  outline(
    title: none,
    target: figure.where(kind: "schematic"),
    indent: true,
    fill: none,
  )

  // List of figures
  heading(level: 2, "Lista de Figuras")
  outline(
    title: none,
    target: figure.where(kind: image),
    indent: true,
    fill: none,
  )

  // List of graphs
  heading(level: 2, "Lista de Gráficas")
  outline(
    title: none,
    target: figure.where(kind: "graph"),
    indent: true,
    fill: none,
  )

  // List of references
  heading(level: 2, "Lista de Referencias")
  outline(
    title: none,
    target: figure.where(kind: "reference"),
    indent: true,
    fill: none,
  )

  // List of tables
  heading(level: 2, "Lista de Tablas")
  outline(
    title: none,
    target: figure.where(kind: table),
    indent: true,
    fill: none,
  )

  pagebreak()

  // Style for bibliography
  heading("Bibliografía")
  bibliography(
    works,
    title: none,
    style: "apa",
  )
}

// Custom added styles for the document

// #quote style
#let quote(term) = {
  v(1.5em)
  set align(end)
  set text(style: "italic")
  block(
      width: 95%,
      fill: luma(240),
      inset: 10pt,
      radius: 8pt,
      term,
  )
  v(1.5em)
}

// #note style
#let note(term) = {
  v(1em)
  set align(center)
  block(
      width: 95%,
      fill: cmyk(0%, 0%, 25%, 0%),
      inset: 10pt,
      radius: 8pt,
      text(weight: "bold",  "Nota. ") + text(term),
  )
  v(1em)
}

// #rf style
#let rf(term) = {
  box(
      fill: cmyk(20%, 0%, 20%, 0%),
      inset: (x: 3pt, y: 0pt),
      outset: (y: 3pt),
      radius: 2pt,
      term,
  )
}


// #dl style
#let dl(term) = {
  set align(center)
  block(
      width: 95%,
      fill: luma(240),
      inset: 10pt,
      radius: 8pt,
      text(1.5em, weight: "bold", term),
  )
}

// #emptyFigure style
#let emptyFigure(term) = {
  v(1em)
  align(center,
      box(
          stroke: 1.5pt + cmyk(0%, 0%, 0%, 30%),
          inset: 10pt,
          radius: 10pt,
          term,
      )
  )
  v(1em)
}

// #df
#let df(term) = {
  v(1em)
  set align(end)
  set text(style: "italic")
  block(
      width: 85%,
      fill: cmyk(20%, 5%, 0%, 10%),
      inset: 10pt,
      radius: 8pt,
      term,
  )
  v(1em)
}

// #mathBlock style
#let mathBlock(term) = {
  set align(center)
  set text(style: "italic")
  block(
      fill: luma(240),
      inset: 10pt,
      radius: 4pt,
      term,
  )
}