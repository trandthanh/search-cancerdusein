Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get "pages/home"
  root to: 'pages#home'
  get '/search', to: 'pages#search'
  post '/search', to: 'pages#search', as: 'results'
  get '/monprojet', to: "pages#monprojet"
  get '/themes/:title', to: "themes#show", as: :theme
  resources :themes, only: [:show]
end

