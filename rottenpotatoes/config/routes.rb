Rottenpotatoes::Application.routes.draw do
  devise_for :moviegoers, controller: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :movies

  post '/movies/add' => 'movies#add', :as => 'add'

  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
