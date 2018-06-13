Rails.application.routes.draw do
  
  namespace :admin do
      resources :authors
      resources :books
      resources :checkouts
      resources :users

      root to: "authors#index"
    end
  resources :books

  resources :authors

  resources :users

  resources :checkouts

  resource :login
    get 'login', to: 'logins#new'
    get 'logout', to: 'logins#destroy', as: 'logout'

  root 'books#index'

end
