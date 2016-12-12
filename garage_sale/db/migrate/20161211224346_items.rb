class Items < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description
      t.integer :quantity, null: false
      t.integer :price, null: false

      t.timestamps(null: false)
    end
  end
end
