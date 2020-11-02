Rails.application.routes.draw do
  devise_for :users
  get 'artists/index'
  get 'artists/show'
  root 'home#index'
  get '/artists', to: 'artists#index'
  get '/artists/:id', to:'artists#show', as: 'artist'
end
