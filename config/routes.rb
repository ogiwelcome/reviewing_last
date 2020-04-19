Rails.application.routes.draw do
  resources :movies
  get 'movies/1'
  get 'movies/new'
  get 'movies/1/edit'
  root 'movies#index'
end
