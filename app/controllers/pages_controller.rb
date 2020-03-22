class PagesController < ApplicationController
  def statistics
    @products = Product.all
    @cloth = @products.find(15)
    @materials = []
    @cloth.materials.each do |material|
      @materials << material.name
    end
  end
end
