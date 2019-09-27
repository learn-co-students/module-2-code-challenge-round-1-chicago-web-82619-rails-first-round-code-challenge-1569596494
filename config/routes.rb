Rails.application.routes.draw do
  root to: 'static_pages#home'
  resources :powers, only: [:index, :show, :new, :create]
  resources :heroines, only: [:index, :show, :new, :create]  
end
