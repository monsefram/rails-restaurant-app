# Monsif ramhane – 2025-11-13
Rails.application.routes.draw do
  get "private_menus/index"
  get "private_menus/show"
  get "/mesmenus", to: "private_menus#index"
  get "/mesmenus/:id", to: "private_menus#show", as: :mesmenu

  devise_for :users
  
  # Section publique
  root "businesses_public#index"
  resources :businesses, controller: "businesses_public", only: [:show]

  # Section administrative
  namespace :admin do
    root "businesses#index"
    resources :businesses, only: [:index, :show]
  end
end
