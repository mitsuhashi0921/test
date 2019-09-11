Rails.application.routes.draw do


  root  'home#index'
  get 'home/about', to: 'home#about'

  devise_for :users

  resources :books, only: [:new, :create, :show, :index, :destroy, :edit, :update] do
end

  resources :users, only: [:show, :edit, :index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
