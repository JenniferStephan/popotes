class CreateMealCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_categories do |t|
      t.references :meal, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
