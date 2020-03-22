class PagesController < ApplicationController
  def statistics
    @products = Product.all
  end

end
