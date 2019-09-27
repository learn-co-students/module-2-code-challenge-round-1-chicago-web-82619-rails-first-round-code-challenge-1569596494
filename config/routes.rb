Rails.application.routes.draw do
  resources :powers, only: [:show]
  resources :heroines, only: [:index, :show, :new, :create]  
end
