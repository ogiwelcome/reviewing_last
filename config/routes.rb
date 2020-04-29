Rails.application.routes.draw do
  resources :movies
  root 'movies#index'
  get '/search', to: 'movies#search'
end
