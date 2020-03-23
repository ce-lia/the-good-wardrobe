Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    resources :proportions, only: [:new, :create, :delete]
  end
  get 'statistics', to: 'pages#statistics'
end
