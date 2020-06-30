class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.float :price, null: false
      t.text :description, null: false
      t.integer :sale, null: false
      t.string :platform, null: false
      t.string :operating_system, null: false
      t.string :developer, null: false
      t.string :publisher, null: false
      t.string :system_requirements
      t.string :links
      t.string :ratings
      t.string :rating_list
      t.timestamps
    end
    add_index :games, :title, unique: true
  end
end
