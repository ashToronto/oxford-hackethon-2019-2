class AddUserIdToSoils < ActiveRecord::Migration[5.2]
  def change
    add_column :soils, :user_id, :integer
    add_index :soils, :user_id
  end
end
