class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :stock_quantity
      t.string :type
      t.decimal :sale_price, :precision => 8, :scale => 2
      t.string :image

      t.timestamps
    end
  end
end
