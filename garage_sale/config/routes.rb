Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :items
  resources :sessions, only: [:new, :create, :destroy]
  resources :purchasings, only: [:new, :show, :create, :destroy]


  root "items#index"

end