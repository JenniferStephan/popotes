class Meal < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :meal_ingredients, dependent: :destroy
  has_many :ingredients, through: :meal_ingredients
  has_many :eater_users, through: :orders, source: :user
  has_many :reviews

  pg_search_scope :global_search,
    against: [ :name, :description, :category ],
    associated_against: {
      user: [ :username]
    },
    using: {
      tsearch: { prefix: true }
    }

  CATEGORIES = ["French", "Sushi", "Dessert", "Grandma's food", "Chinese", "Healthy", "Moroccan", "Burger", "Vegan", "Italian", "Thaï", "Hawaïan"]

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :unit_price, presence: true, numericality: { only_integer: true }
  validates :quantity_max, presence: true, numericality: { only_integer: true }
  # validates :start_availability_date, presence: true
  # validates :end_availability_date, presence: true
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def rating_average
    self.reviews.map { |review| review.rating }.reduce(:+) / self.reviews.count.to_f
  end
end
