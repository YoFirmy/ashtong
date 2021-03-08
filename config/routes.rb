  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "sign_up", to: "registrations#new" 
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "account", to: "accounts#index"
  get "edit_account_info", to: "accounts#edit"
  patch "edit_account_info", to: "accounts#update"

  get "edit_password", to: "passwords#edit"
  patch "edit_password", to: "passwords#update"
  
  delete "logout", to: "sessions#destroy"
  
  get "tongs", to: "products#index"

  root to: "main#index"
end
