class Material < ApplicationRecord
  has_many :proportions
  has_many :products, through: :proportions

  validates :name, uniqueness: true, presence: true
end
