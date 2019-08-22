class AddDefaulttoOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :order_quantity
    add_column :orders, :order_quantity, :integer, default: 0
  end
end
