class Meal < ApplicationRecord
  belongs_to :restaurant
  belongs_to :chef
  has_many :steps, dependent: :destroy
  has_many :order_items
  has_many :meal_categories, dependent: :destroy
  has_many :categories, through: :meal_categories
  has_one_attached :photo
end
