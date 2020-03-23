class PagesController < ApplicationController
  def statistics
    @products = current_user.products.all
  end
end
