class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :meal_ingredients, dependent: :destroy
  has_many :ingredients, through: :meal_ingredients
  has_many :eater_users, through: :orders, source: :user
  has_many :reviews

  CATEGORIES = ["Chinese", "Healthy", "Morroccan", "Burger", "Vegan", "Italian", "Thaï", "Hawaïan", "French"]

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :unit_price, presence: true, numericality: { only_integer: true }
  validates :quantity_max, presence: true, numericality: { only_integer: true }
  # validates :start_availability_date, presence: true
  # validates :end_availability_date, presence: true
  mount_uploader :photo, PhotoUploader
end
