Rails.application.routes.draw do
  root 'heroines#index'
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
  post "heroines/search", to: "heroines#search", as: "search"
end