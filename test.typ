#let logo_width = 80%
#set page(background: move(dx: 3%, dy: 19%, image("inria_logo_rouge.png")))
// Logo section
#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  align(left + bottom, image("logo_entreprise.png", width: logo_width)),
  align(right + bottom, image("logo_ecole.png", width: logo_width))
)

#v(4cm)

// Title section
#align(center)[
  #text(size: 30pt, weight: "bold")[
    Développement d'un générateur d'agents autonome en Python
  ]
]

#v(2cm)

// Interne Name section
#align(center)[
  #text(size: 20pt, weight: "thin")[
    Mathias APARICIO
  ]
    #v(0.3cm)
    #text(size:15pt)[
    21 mai 2024 - 20 septembre 2024
    ]
]
// Tutors section
#v(6cm)
#let fontTutorSectionSize = 17pt
#let fontTutorTextSize = 12pt
      #grid(
        columns: (1fr, 1fr),
        align(center)[
          #text(size: fontTutorSectionSize)[*Maitre de stage* ] \
          #text(size:fontTutorTextSize)[Xabier Jaureguiberry \
          #link("mailto:xabier.jaureguiberry@inria.fr")[xabier.jaureguiberry\@inria.fr]]
        ],
        align(center)[
          #text(size:fontTutorSectionSize)[*Tuteur académique*] \
          #text(size:fontTutorTextSize)[Mathieu Faverge \
          #link("mailto:mfaverge@bordeaux-inp.fr")[mfaverge\@bordeaux-inp.fr]]
        ]
      )

