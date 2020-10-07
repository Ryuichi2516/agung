Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
    passwords: "users/passwords"
  }
  root 'products#index'

  devise_scope :user do
    get "user/:id", to: "users/registrations#detail"
    get "logout", to: "users/sessions#destroy"
    get "users", to: "users/registrations#sign_up"
  end

  resources :delivery_addresses, only: [:index, :new, :create]

end