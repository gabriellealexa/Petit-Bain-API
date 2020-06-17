Rails.application.routes.draw do
  resources :starred_organizers
  resources :starred_resources
  resources :organizer_resources
  resources :blog_tags
  resources :resource_needs
<<<<<<< HEAD
  resources :users, only: [:index, :create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
=======
  resources :users, only: [:create, :index]
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
>>>>>>> medium
  resources :tags
  resources :blogs
  resources :groups
  resources :organizers
  resources :scopes
  resources :needs
  resources :resources
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
