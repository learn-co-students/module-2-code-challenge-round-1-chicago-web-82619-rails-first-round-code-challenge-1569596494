Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]  
  
  root 'heroines#index'

  get '/search', to: "heroines#search"
end
