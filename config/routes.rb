Rails.application.routes.draw do
  get 'users/new', to:'users#new', as: 'user_new'
  post 'users/create', to:'users#create', as: 'users_create'
  get 'home/index'

  resources :sessions, only: [:new, :create, :destroy]

  resources :posts do
      resources :comments
  end

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
