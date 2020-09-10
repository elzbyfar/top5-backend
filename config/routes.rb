Rails.application.routes.draw do
  resources :pools
  resources :lists
  resources :comments
  resources :users
  resources :albums
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
