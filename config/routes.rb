Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/strains" => "strains#index"
    post "/strains" => "strains#create"
    get "/strains/:id" => "strains#show"
    patch "/strains/:id" => "strains#update"
    delete "/strains/:id" => "strains#destroy"
  end
end
