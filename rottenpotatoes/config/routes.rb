Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  match 'same_director/:id', to: 'movies#same_director', \
    via: [:get], as: 'same_director'
end
