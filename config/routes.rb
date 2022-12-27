Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  resources :category
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
