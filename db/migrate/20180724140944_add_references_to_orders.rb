class AddReferencesToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :basket_id, :integer


  end
end
