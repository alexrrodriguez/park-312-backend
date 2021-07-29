Rails.application.routes.draw do
  
  get "/parks" => "parks#index"

  post "/parks" => "parks#create"

  get "/parks/:id" => "parks#show"

  patch "/parks/:id" => "parks#update"

  delete "/parks/:id" => "parks#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

end
