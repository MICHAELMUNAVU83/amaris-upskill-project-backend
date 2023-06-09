Rails.application.routes.draw do
  resources :bookings
  resources :orders
  resources :reviews
  resources :likes
  resources :products
  # config/routes.rb
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end