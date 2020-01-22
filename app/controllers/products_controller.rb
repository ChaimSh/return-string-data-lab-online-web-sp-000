class ProductsController < ApplicationController
  # before_action :set_product

  def new
    @product = Product.new
  end

  def create
    product = Product.create(product_params)
     redirect_to products_path
  end

  def index
   @products = Product.all
  end

  def inventory
     response = "false"
     product = Product.find(params[:id])
     response = "true" if response.inventory > 0
     render plain: response
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  private

  # def set_product
  #   @product = Product.find(params[:id])
  # end

  def product_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end


end
