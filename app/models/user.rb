class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :reviews, through: :orders
  has_many :order_items, through: :orders
  has_many :meals, through: :order_items

  validates :first_name, presence: true
  validates :last_name, presence: true
end
