class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer "game_id", null: false
      t.float "price", null: false
      t.integer "user_order_id", null: false

      t.timestamps
    end
    add_index :orders, :game_id
    add_index :orders, :user_order_id
  end
end
