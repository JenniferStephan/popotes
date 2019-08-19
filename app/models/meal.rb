class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :eater_users, through: :orders, source: :user

  CATEGORIES = ["Chinese", "Healthy", "Moroccan", "Burger"]

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :unit_price, presence: true, numericality: { only_integer: true }
  validates :quantity_max, presence: true, numericality: { only_integer: true }
  # validates :start_availability_date, presence: true
  # validates :end_availability_date, presence: true
end
