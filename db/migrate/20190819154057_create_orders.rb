class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_quantity
      t.date :pick_up_date, default: Date.today
      t.text :order_comment
      t.references :user, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps null: false
    end
  end
end
