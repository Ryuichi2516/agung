Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
    passwords: "users/passwords"
  }
  root 'products#index'

  devise_scope :user do
    get "logout", to: "users/registrations#logout", as: :logout
    get "users", to: "users/registrations#sign_up"
    get "user/:id", to: "users/registrations#detail", as: :user
    get "users/delivery_address", to: "users/registrations#delivery_address"
  end

  resources :delivery_addresses, only: [:index, :new, :create]

end