#import "lib.typ": create_front_page
#let company_logo = "images/typst.png"
#let school_logo = "images/logo_ecole.png"
// #let background_logo = "images/univ-bordeaux.png"
#let title = "Titre du Stage"
#let intern_name = "Prénom NOM"
#let start_date = "21 mai 2024"
#let end_date = "26 septembre 2024"
#let supervisor_name = "Michel Dupont"
#let supervisor_email = "michel.dupont@mail.fr"
#let academic_tutor_name = "François Martin"
#let academic_tutor_email = "francois.martin@mail.fr"
#create_front_page(
  company_logo,
  school_logo,
  title,
  intern_name,
  start_date,
  end_date,
  supervisor_name,
  supervisor_email,
  academic_tutor_name,
  academic_tutor_email
)