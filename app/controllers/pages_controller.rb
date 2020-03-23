class PagesController < ApplicationController
  def statistics
    @products = current_user.products.all
    @lifetime = current_user.products_lifetime

    @composition_array = []
    @products.each do |product|
      product.proportions.each do |proportion|
      @composition_array << [proportion.material.name, proportion.percentage]
      end
    end

    thrifted = @products.group(:second_hand).count
    labels = { true => 'Thrifted', false => 'New' }
    @thrift_hash = thrifted.transform_keys(&labels.method(:[]))
  end
end
