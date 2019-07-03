Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "presentation", to: 'pages#presentation'
  get "produits", to: 'pages#produits'
  get "construction", to: 'pages#construction'

  resources :contacts, only: [:new, :create]

  resources :ateliers, only: [:index, :new, :edit, :create, :update, :destroy]

end
