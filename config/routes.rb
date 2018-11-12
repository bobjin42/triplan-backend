Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :locations
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

      resources :trips
      resources :plans, only: [:create, :index]
      # post '/plans/batch_update', to: 'plans#batch_update'
      patch '/batch_update', to: 'plans#batch_update'
    end
  end
end
