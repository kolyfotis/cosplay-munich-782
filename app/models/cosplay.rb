class Cosplay < ApplicationRecord
  belongs_to :user

  # price to be positive
  validates :price, presence: true, comparison: { greater_than_or_equal_to: 0 }
  # details to be between 6 and 255 characters long
  validates :details, presence: true, length: { in: 6..500 }
end
