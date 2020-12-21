Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/gifts" => "gifts#index"
    post "/gifts" => "gifts#create"
    get "/gifts/:id" => "gifts#show"
    patch "/gifts/:id" => "gifts#update"
    delete "gifts/:id" => "gifts#destroy"
  end
end
