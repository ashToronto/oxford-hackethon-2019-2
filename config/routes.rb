Rails.application.routes.draw do
  devise_for :users
  resources :soils
  resources :charges
  root to: 'home#index'
end
