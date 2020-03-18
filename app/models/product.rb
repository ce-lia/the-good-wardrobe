class Product < ApplicationRecord
  belongs_to :user
  has_many :proportions, dependent: :destroy
  has_many :materials, through: :proportions
  validates :description, presence: true, length: { minimum: 25 }
  validates :second_hand, presence: true
  validates :title, presence: true
  validates :status, presence: true
  validates :category, presence: true
end


