class MealIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal
  validates :meal, presence: true
  validates :ingredient, presence: true
end
