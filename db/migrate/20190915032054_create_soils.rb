class CreateSoils < ActiveRecord::Migration[5.2]
  def change
    create_table :soils do |t|
      t.string :company
      t.decimal :quote
      t.decimal :weight
      t.string :pick_up_adress
      t.string :soil_type

      t.timestamps
    end
  end
end
