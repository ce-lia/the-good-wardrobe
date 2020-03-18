class ProductsController < ApplicationController

  def index #=> view => index.html.erb
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def edit; end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end
  def destroy
    @product.destroy
    redirect_to products_path
  end
  private
  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:name, :address, :description, :chef)
  end


end
