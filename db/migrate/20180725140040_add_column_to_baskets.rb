class AddColumnToBaskets < ActiveRecord::Migration[5.1]
  def change
    add_column :baskets, :user_id, :integer
  end
end
