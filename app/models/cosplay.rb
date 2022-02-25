class Cosplay < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  # price to be positive
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  # details to be between 6 and 255 characters long
  validates :details, presence: true, length: { in: 6..500 }
end
