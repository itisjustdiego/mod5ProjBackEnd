Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :messages
      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
