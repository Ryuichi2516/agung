Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  root 'products#index'

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "logout", :to => "users/sessions#destroy"
  end
end