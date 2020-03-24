class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :proportions, dependent: :destroy
  has_many :materials, through: :proportions
  validates :description, presence: true, length: { minimum: 25 }
  # validates :second_hand, presence: true
  validates :title, presence: true
  validates :status, presence: true
  validates :category, presence: true

  enum status: {
    to_sell: 1,
    to_give: 2,
    sold: 3,
    given: 4,
    keep: 5
  }
end
