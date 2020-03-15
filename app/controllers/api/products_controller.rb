class Api::ProductsController < ApplicationController
  def index
    # @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    # if params[:discount] == 'true'
    #   @products = @products.where("price < ?", params[:discount])
    # else

    @products = Product.all
    
    render 'index.json.jb'
    # end
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
  
  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(
      name: params[:input_name] || @product.name,
      description: params[:input_description] || @product.description,
      price: params[:input_price] || @product.price,
      image_url: params[:input_image_url] || @product.image_url
    )
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_message}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: 'Your item has been deleted'}
  end
  
end
