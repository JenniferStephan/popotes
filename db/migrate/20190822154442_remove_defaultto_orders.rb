class RemoveDefaulttoOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :order_quantity, :integer, default: 0
    add_column :orders, :order_quantity, :integer
  end
end
