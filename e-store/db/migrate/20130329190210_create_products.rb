class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal(8,2) :price
      t.integer :stock_quantity
      t.string :type
      t.decimal(8,2) :sale_price
      t.string :image

      t.timestamps
    end
  end
end
