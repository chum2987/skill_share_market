Rails.application.routes.draw do
  root to: "tops#index"
  resources :tops, only: [:index]
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
end
