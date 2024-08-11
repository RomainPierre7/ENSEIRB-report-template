#let create_logo_section(company_logo, school_logo, logo_width: 80%) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    align(left + bottom, image(company_logo, width: logo_width)),
    align(right + bottom, image(school_logo, width: logo_width))
  )
}

#let create_title_section(title) = {
  align(center)[
    #text(size: 30pt, weight: "bold")[#title]
  ]
}

#let create_intern_section(name, start_date, end_date) = {
  align(center)[
    #text(size: 20pt, weight: "thin")[#name]
    #v(0.3cm)
    #text(size: 15pt)[#start_date - #end_date]
  ]
}

#let create_tutor_section(supervisor_name, supervisor_email, academic_tutor_name, academic_tutor_email) = {
  let font_tutor_section_size = 17pt
  let font_tutor_text_size = 12pt
  grid(
    columns: (1fr, 1fr),
    align(center)[
      #text(size: font_tutor_section_size, weight: "bold")[Maitre de stage] \
      #text(size: font_tutor_text_size)[#supervisor_name \
      #link("mailto:" + supervisor_email)[#supervisor_email]]
    ],
    align(center)[
      #text(size: font_tutor_section_size, weight: "bold")[Tuteur académique] \
      #text(size: font_tutor_text_size)[#academic_tutor_name \
      #link("mailto:" + academic_tutor_email)[#academic_tutor_email]]
    ]
  )
}

#let create_front_page(
  company_logo,
  school_logo,
  background_logo,
  title,
  intern_name,
  start_date,
  end_date,
  supervisor_name,
  supervisor_email,
  academic_tutor_name,
  academic_tutor_email
) = {
  set page(background: move(dx: 3%, dy: 19%, image(background_logo)))
  
  create_logo_section(company_logo, school_logo)
  v(4cm)
  create_title_section(title)
  v(2cm)
  create_intern_section(intern_name, start_date, end_date)
  v(6cm)
  create_tutor_section(supervisor_name, supervisor_email, academic_tutor_name, academic_tutor_email)

  if background_logo != none {
    set page(background: move(dx: 3%, dy: 19%, image(background_logo)))
  }
}