Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :transports, only: [:index, :show] do
    resources :reservations, only: [:create]
  end
  resources :reservations, only: [:index, :show]
  namespace :owner do
    resources :transports, only: [:index, :show, :create, :update, :destroy]
  end
end
