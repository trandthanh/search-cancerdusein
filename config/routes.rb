Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get '/search', to: 'pages#search'
  post '/search', to: 'pages#search', as: 'results'
  get '/monhistoire', to: "pages#monhistoire"
  resources :themes, only: [:show]
end

