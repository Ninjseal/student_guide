Rails.application.routes.draw do

  root :to => 'access#login'

  # Login/Logout routes
  get 'login', :to => 'access#login', :as => 'login'
  post 'login', :to => 'access#attempt_login', :as => 'attempt_login'
  get 'logout', :to => 'access#logout', :as => 'logout'

  # Home routes
  get 'home_s', :to => 'student_home#index', :as => 'student_home'
  get 'home_t', :to => 'teacher_home#index', :as => 'teacher_home'
  get 'home_a', :to => 'admin_home#index', :as => 'admin_home'

  # Signup/Register routes
  get 'signup', :to => 'register#signup', :as => 'signup'
  get 'token_auth', :to => 'register#verify', :as => 'token_auth'
  post 'token_auth', :to => 'register#token_validation', :as => 'token_validation'
  post 'signup', :to => 'register#attempt_signup', :as => 'attempt_signup'

  # Cand accesez localhost:3000/ imi apare un welcome.
  # Cand dau hover pe welcome, acesta dispare si ramane vizibil formularul de login.
  # Cand dau submit la formularul de login, se face un post request catre server.
  #   - Se verifica daca username-ul exista in baza de date si daca parola este corecta.
  #   - Daca totul este ok, atunci redirectioneaza user-ul catre HomePage-ul lui. -> In functie de tipul utilizatorului.
  #   - Daca nu, atunci arata eroare.

  # AccessController - login action -> Render Login View
  #                  - attempt_login action -> Handle post request and check if username is in database + authenticate user with password
  #                                         -> If ok, store user_id in session and redirect user to HomeController#index
  #                                         -> If not, show error

  #HomeController

end
