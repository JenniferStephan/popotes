class Order < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :order_quantity, presence: true, numericality: { only_integer: true }
  validates :pick_up_date, presence: true
end
