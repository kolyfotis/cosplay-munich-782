class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cosplays, dependent: :destroy

  validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, presence: true, length: { minimum: 2 }
  validates :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, presence: true, length: { minimum: 2 }
end
