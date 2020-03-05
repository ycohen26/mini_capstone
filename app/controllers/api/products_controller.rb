class Api::ProductsController < ApplicationController
  def query_all_products
    # id = params[:id].to_i

    @product = Product.find_by(id: 1)
    p @product
     
    render 'query_all_products.json.jb'
  end
end
