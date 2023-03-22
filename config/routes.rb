Rails.application.routes.draw do
  resources :posts
  # ActiveAdmin.routes(self)
  resources :recipes
  resources :user
  root to: 'recipes#index'
  # root to: 'posts#index'

  # post '/auth/login', to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
