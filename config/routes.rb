Rails.application.routes.draw do

  get 'events', to: "events#index", :as => :events
  post 'events', to: "events#create"

  get 'events/new', to: "events#new", :as => :new_event
  get 'events/:id/edit', to: "events#edit", :as => :edit_event
  get 'events/:id', to: "events#show", :as => :event

  patch 'events/:id', to: "events#update"
  put 'events/:id', to: "events#update"
  delete 'events/:id', to: "events#destroy"


  resources :testers

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"

  get "users", to: "users#index"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  patch "event_attendings/invite", to: "event_attendings#invite", :as => :invite
  patch "event_attendings/accept", to: "event_attendings#accept", :as => :accept
  patch "event_attendings/attend", to: "event_attendings#attend", :as => :attend
  delete "event_attendings/withdraw", to: "event_attendings#withdraw", :as => :withdraw

  get '/users/:id', to: 'users#show', :as => :user
  
  root to: "events#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
