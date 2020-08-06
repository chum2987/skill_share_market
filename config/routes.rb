Rails.application.routes.draw do
  root to: "tops#index"
  resources :tops, only: [:index]
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get 'users/registrations/new',      to: 'users/registrations#new'
    get 'users/registrations/index',      to: 'users/registrations#index'
    get 'users/registrations/mail_check', to: 'users/registrations#mail_check'
    get 'users/registrations/completed',  to: 'users/registrations#completed'
  end
  
  resources :skills, only: [:show]
  
end
