Rails.application.routes.draw do
  get 'categories/show'
  root to: 'pages#home'
  get '/search', to: 'pages#search'
  resources :themes, only: [:show]
end
