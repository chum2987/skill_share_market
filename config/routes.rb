Rails.application.routes.draw do
  root to: "tops#index"
  resources :tops, only: [:index]
  devise_for :users
end
