#import "lib.typ": create_front_page
#let company_logo = "images/logo_entreprise.png"
#let school_logo = "images/logo_ecole.png"
#let background_logo = "images/inria_logo_rouge.png"
#let title = "Développement d'un générateur d'agents autonome en Python"
#let intern_name = "Mathias APARICIO"
#let start_date = "21 mai 2024"
#let end_date = "20 septembre 2024"
#let supervisor_name = "Xabier Jaureguiberry"
#let supervisor_email = "xabier.jaureguiberry@inria.fr"
#let academic_tutor_name = "Mathieu Faverge"
#let academic_tutor_email = "mfaverge@bordeaux-inp.fr"
#create_front_page(
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
)