class PagesController < ApplicationController
  def statistics
    @products = Product.all
    @materials = Material.all

    @cloth = @products.find(15)
    @proportion = @cloth.proportions
  end
end
