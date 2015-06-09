class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :price
      t.integer :initial_stock
      t.integer :current_stock

      t.timestamps null: false
    end
  end
end
