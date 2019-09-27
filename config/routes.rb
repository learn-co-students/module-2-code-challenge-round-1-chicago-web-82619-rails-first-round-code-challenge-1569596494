Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:new, :create,:index, :show]
end
