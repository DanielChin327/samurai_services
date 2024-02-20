class Samurai < ApplicationRecord
  belongs_to :user
  has_many :bookings


  validates :name, presence: true
  validates :skill, presence: true
  validates :price_per_day, presence: true
  validates :group_size, presence: true
end
