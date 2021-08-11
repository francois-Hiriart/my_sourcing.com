Rails.application.routes.draw do

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :products, only: [:index, :show]

  resources :users, only: [:update]

  resources :orders

  resources :products do
    resources :orders, only: [:new, :create]
  end

  resources :orders do
    resources :ratings, only: [:new, :create]
  end

  post 'orders/:id/validate', to: 'orders#validate'
  post 'orders/:id/propose_price', to: 'orders#propose_price'
  post 'orders/:id/confirm_shipping', to: 'orders#confirm_shipping'
  get 'products/filtered_search', to: 'products#filetered_search', as: :filtered_search


  end

