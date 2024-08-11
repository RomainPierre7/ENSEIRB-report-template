#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties
  set document(author: authors, title: title)
  set page(
    margin: (left: 0.5cm, right: 0.5cm, top: 0.5cm, bottom: 0.5cm),
    numbering: "1",
    number-align: center,
  )
  set text(font: "New Computer Modern", lang: "fr")
  show math.equation: set text(weight: 400)
  
  // Set paragraph properties
  set par(justify: true, first-line-indent: 1cm)
  
  // Title page
  page(
    margin: (x: 0cm, y: 0cm),
    [
      #block(
        width: 100%,
        height: 100%,
        [
          #align(center)[
            #v(0.5cm)
            #image("logo_ecole.png", width: 10cm)
            #v(1.0cm)
            #line(length: 100%, stroke: 0.2mm)
            #v(0.4cm)
            #text(size: 24pt, weight: "bold")[#title]
            #v(0.4cm)
            #line(length: 100%, stroke: 0.2mm)
            #v(1.5cm)
            #text(size: 16pt)[#authors.join(", ")]
            #v(1.0cm)
            #text(size: 14pt, weight: "bold")[#date]
            #v(2cm)
            #align(center)[
              #text(size: 24pt)[
                "Ebiose"
              ]
            ]
            #v(4cm)
            #align(center)[
              Stage d'approfondissement
              #v(0.5em)
              Département Informatique
              #v(0.5em)
              Année 2023/2024
            ]
          ]
        ]
      )
    ]
  )
  
  // Main body
  set page(numbering: "1", number-align: center)
  counter(page).update(1)
  
  body
}

// Main document
#show: project.with(
  title: "Rapport de Stage",
  authors: ("APARICIO Mathias", ),
  date: "Mai 2023",
)

