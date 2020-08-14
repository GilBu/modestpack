class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :game_id, null: false
      t.integer :customer_id
      t.timestamps
    end
    add_index :cart_items, :game_id
  end
end
