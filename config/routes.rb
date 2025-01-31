Rails.application.routes.draw do

  resources :profiles, only: [:show, :edit, :update]

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :posts

  root 'home#index'
end
