Rails.application.routes.draw do
  resources :soils
  devise_for :users
  root to: 'home#index'
end
