class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :samurais
  has_many :bookings
  has_many :bookings_as_daimyo, through: :samurais, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :username, length: {minimum: 3}
  validates :username, uniqueness: true
end
