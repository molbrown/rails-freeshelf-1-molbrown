Rails.application.routes.draw do
  
  resources :books

  resources :authors

  resources :users

  resources :checkouts

  resource :login
    get 'login', to: 'logins#new'
    get 'logout', to: 'logins#destroy', as: 'logout'

  root 'books#index'

end
