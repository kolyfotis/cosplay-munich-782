class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cosplay

  validates :date, presence: true
end
