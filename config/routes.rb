Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :messages
      # post '/auth', to: 'auth#create'
    end
  end
end
