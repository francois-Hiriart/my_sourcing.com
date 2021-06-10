Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :orders

  resources :products, only: [:index, :show]


  resources :products do
    resources :orders, only: [:new, :create]
  end

  post 'orders/:id/validate', to: 'orders#validate'
  post 'orders/:id/propose_price', to: 'orders#propose_price'
  post 'orders/:id/confirm_shipping', to: 'orders#confirm_shipping'
  # get 'products_search', to: 'pages#index_category', as: :products_search

end
