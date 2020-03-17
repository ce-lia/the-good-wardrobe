class Channel < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :action, presence: true
end
