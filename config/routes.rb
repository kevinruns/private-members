Rails.application.routes.draw do

  get 'events/new', to: "events#new"
  post 'events/new', to: "events#create"

  get 'events/:id', to: "events#show", :as => :event
  get 'events/index'

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get '/users/:id', to: 'users#show', :as => :user
  
  root to: "events#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
