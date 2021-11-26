Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  post '/new_dog_session', to: 'dogs#new_session'

  resources :dogs

  resources :matches, only: [:index, :create] do
    member do
      get '/accepted-match', to: 'matches#accept', as: :accept
      get '/denied-match', to: 'matches#deny', as: :deny
    end
  end

  # resources :matches, only: :index

  get '/profile/:id', to: 'dashboard#show', as: :profile # profile page
  get '/profile/:id/dogs', to:	'dashboard#dogs', as: :dogs_profile # display all dogs of a user
  get '/profile/:id/requests', to: 'dashboard#requests', as: :requests_profile # display all requests of match

  # routes for styleguides DO NOT TOUCH
  get "/stylesheets/dogs/index", to: "stylesheets#index", as: :index
  get "/stylesheets/dogs/show", to: "stylesheets#show"
end
