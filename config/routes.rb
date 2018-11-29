Rails.application.routes.draw do
  get 'categories/show'
  root to: 'pages#home'
  get '/search', to: 'pages#search'
  post '/search', to: 'pages#search', as: 'results'
  resources :themes, only: [:show]
end

