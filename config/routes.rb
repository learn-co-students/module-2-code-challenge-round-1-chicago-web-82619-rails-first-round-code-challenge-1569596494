Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :new, :create]
  resources :heroines, only: [:index, :show, :new, :create]  
end
