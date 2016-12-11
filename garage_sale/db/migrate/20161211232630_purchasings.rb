class Purchasings < ActiveRecord::Migration[5.0]
  def change
    create_table :purchasings do |t|
      t.integer :user_id, null: false
      t.integer :item_id, null: false
      t.integer :num_of_items, null: false
      t.integer :total_price, null: false

      t.timestamps(null: false)
    end
  end
end
