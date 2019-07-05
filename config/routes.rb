Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "presentation", to: 'pages#presentation'
  get "produits", to: 'pages#produits'
  get "construction", to: 'pages#construction'

  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  resources :contacts, only: [:new, :create]

  resources :ateliers, only: [:index, :new, :edit, :create, :update, :destroy]

end
