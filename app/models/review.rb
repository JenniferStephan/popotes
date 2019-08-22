class Review < ApplicationRecord
  belongs_to :meals
  belongs_to :user
end
