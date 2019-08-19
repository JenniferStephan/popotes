require 'Date'

class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.string :category
      t.text :address
      t.integer :unit_price
      t.integer :quantity_max
      t.date :start_availability_date, default: Date.today
      t.date :end_availability_date
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
