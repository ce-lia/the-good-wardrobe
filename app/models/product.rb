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
    in_my_wardrobe: 1,
    to_sell: 2,
    to_donate: 3,
    to_recycle: 4,
    to_throw_away: 5,
    sold: 6,
    donated: 7,
    recycled: 8,
    thrown_away: 9
  }
end



