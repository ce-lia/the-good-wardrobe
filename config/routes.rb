Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'products', to: 'products#index'
  get 'products/new', to: 'products#new'
  get 'products/:id', to: 'products#show', as: :product
  post 'products', to: 'products#create'
  get 'products/:id/edit', to: 'products#edit'
  patch 'products/:id', to: 'products#update'
  delete 'products/:id', to: 'products#destroy'
end
