Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :dogs

  resources :matches, only: [:index, :create]

  # resources :matches, only: :index

  get '/profile/:id', to: 'dashboard#show', as: :profile # profile page
  get '/profile/:id/dogs', to:	'dashboard#dogs', as: :dogs_profile # display all dogs of a user
  get '/profile/:id/requests', to: 'dashboard#requests', as: :requests_profile # display all requests of match

  # routes for styleguides DO NOT TOUCH
  get "/stylesheets/dogs/index", to: "stylesheets#index", as: :index
  get "/stylesheets/dogs/show", to: "stylesheets#show"
end
