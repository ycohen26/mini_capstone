Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  
  namespace :api do
    get "/query_all_products" => "products#query_all_products"
  end
end
