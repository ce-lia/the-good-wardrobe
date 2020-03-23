class ProportionsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @proportion = Proportion.new
  end

  def create
    @proportion = Proportion.new(proportion_params)
    @product = Product.find(params[:product_id])
    @proportion.product = @product
    if @proportion.save
      redirect_to product_path(@product)
    else
      render "products/show"
    end
  end

   def destroy
    @proportion = Proportion.find(params[:id])
    @proportion.destroy
    redirect_to product_path(@proportion.product)
  end

   private

  def proportion_params
    params.require(:proportion).permit(:percentage, :material_id)
  end
end
