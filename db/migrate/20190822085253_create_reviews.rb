class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :meal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
