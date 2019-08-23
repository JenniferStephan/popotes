class MealCategory < ApplicationRecord
  belongs_to :meal
  belongs_to :category
end
