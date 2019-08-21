class ChangeAddressToBeStringInMeals < ActiveRecord::Migration[5.2]
  def change
    change_column :meals, :address, :string
  end
end
