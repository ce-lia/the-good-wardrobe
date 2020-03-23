class User < ApplicationRecord
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
end
