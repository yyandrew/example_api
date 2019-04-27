Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  concern :api_base do
    resources :todos
  end

  namespace :v1 do
    concerns :api_base
  end
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
