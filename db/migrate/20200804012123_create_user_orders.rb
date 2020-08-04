class CreateUserOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :user_orders do |t|
      t.integer  "user_id",          null: false
      t.integer  "purchase_total",   null: false

      t.timestamps
    end
    add_index :user_orders, :user_id

  end
end
