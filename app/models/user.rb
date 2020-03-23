class User < ApplicationRecord
  has_merit

  has_many :products
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def products_lifetime
    lifetime = 0
      products.each do |product|
        if product.discard_date != nil
        lifetime += product.discard_date - product.purchase_date
        end
      end
      average_lifetime = ((lifetime / products.count) / 365 )* 12
  end

  def second_hand_percentage
    self.products.where(second_hand: true).count.to_f / self.products.count.to_f
  end

  def organic_recycled_materials
    composition_hash = Hash.new
    self.products.each do |product|
      if product.second_hand != true
          product.proportions.each do |proportion|
          composition_hash[proportion.material.name] =+ proportion.percentage
          end
      end
    end
    if composition_hash != nil
    composition_hash[:organic_hemp] + composition_hash[:organic_cotton] + composition_hash[:lyocell] / composition_hash[:polyester] + composition_hash[:nylon] + composition_hash[:coton]
  end
  end

end
