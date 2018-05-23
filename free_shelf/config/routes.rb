Rails.application.routes.draw do
  
  resources :books

  resources :authors

  resources :users

  resources :checkouts

  root 'books#index'

end
