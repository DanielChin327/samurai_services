class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :samurai_id
end
