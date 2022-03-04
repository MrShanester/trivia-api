Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/options" => "products#index"
  get "/options/:id" => "products#show"
  post "/options" => "products#create"
  patch "/options/:id" => "products#update"
  delete "/options/:id" => "products#destroy"
end
