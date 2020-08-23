Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :create, :update]
  get 'home/about', to: 'home#about'
end