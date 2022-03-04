Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Options controller
  get "/options" => "options#index"
  get "/options/:id" => "options#show"
  post "/options" => "options#create"
  patch "/options/:id" => "options#update"
  delete "/options/:id" => "options#destroy"

  # Questions Controller
  get "/questions" => "questions#index"
  get "/questions/:id" => "questions#show"
  post "/questions" => "questions#create"
  patch "/questions/:id" => "questions#update"
  delete "/questions/:id" => "questions#destroy"

  # User Controller
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
end
