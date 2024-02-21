class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :samurai
  validates :start_date, presence: true
  validates :end_date, presence: true
  enum status: { pending: "pending", approved: "approved", rejected: "rejected"}, _default: :pending
end
