Rails.application.routes.draw do
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  concern :api_base do
    resources :todos
  end

  namespace :v1 do
    concerns :api_base
  end
end
