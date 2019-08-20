class Ingredient < ApplicationRecord
  has_many :meal_ingredients

  ALLERGIES = ["Céréales contenant du gluten", "Crustacés", "Oeufs", "Poissons", "Arachides", "Soja", "Lait", "Fruits à coques", "Céleri", "Moutarde", "Graines de sésame"]

  validates :name, presence: true, inclusion: { in: ALLERGIES }
end
