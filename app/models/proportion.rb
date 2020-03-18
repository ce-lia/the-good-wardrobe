class Proportion < ApplicationRecord
  belongs_to :product
  belongs_to :material
  validates :product, uniqueness: { scope: :material }
end
