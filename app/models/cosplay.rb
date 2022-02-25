class Cosplay < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  # price to be positive
  validates :price, presence: true,
                    format: { with: /\A\d+(\.\d{1,2})?\z/, message: "Invalid price format." }
  # details to be between 6 and 255 characters long
  validates :details, presence: true, length: { in: 6..500 }
  validates :title, presence: true, length: { in: 3..50 }
  validates :photo, presence: true
  # ,
  #                   format: { with: /.+\.(png|jpg|jpeg)\z/,
  #                             message: 'Invalid photo format. Only .png, .jpg and .jpeg extensions are allowed.' }
end
