Rails.application.routes.draw do

  # parks routes
  
  get "/parks" => "parks#index"

  post "/parks" => "parks#create"

  get "/parks/:id" => "parks#show"

  patch "/parks/:id" => "parks#update"

  delete "/parks/:id" => "parks#destroy"

  post "/search" => "parks#search"

  # user routes

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  # park_events routes

  get "/park_events" => "park_events#index"

  post "/park_events" => "park_events#create"

  get "/park_events/:id" => "park_events#show"

  # patch "/park_events/:id" => "park_events#update"

  # delete "/park_events/:id" => "park_events#destroy"

end
