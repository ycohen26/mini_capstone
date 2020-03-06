class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jb'
  end
    
  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    p @product
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[input_name],
      description: params[input_description],
      price: params[input_price],
      image_url: params[input_image_url]
    )
    render 'show.json.jb'
  end
end
