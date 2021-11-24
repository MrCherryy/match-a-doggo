Rails.application.routes.draw do
  get 'matches/new'
  get 'matches/index'

  devise_for :users
  root to: 'pages#home'

  resources :dogs do
    resources :matches, only: :create
  end

  resources :matches, only: :index

  # routes for styleguides DO NOT TOUCH
  get "/stylesheets/dogs/index", to: "stylesheets#index", as: :index
  get "/stylesheets/dogs/show", to: "stylesheets#show"
end
