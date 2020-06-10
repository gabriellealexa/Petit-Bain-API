Rails.application.routes.draw do
  resources :organizer_resources
  resources :blog_tags
  resources :resource_needs
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  #testing two branches
  resources :tags
  resources :blogs
  resources :groups
  resources :organizers
  resources :scopes
  resources :needs
  resources :resources
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
