Rails.application.routes.draw do
  resources :comments
  resources :posts do
    resources :likes
  end
  root 'posts#index'
  devise_for :users , :controllers => {:sessions => 'sessions'}
  get '/users/:id' , to: 'users#show', as: :user_profile
  resources :relationships, only: [:create, :destroy]
  get '/discovers' , to: 'discovers#index', as: :discovers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
