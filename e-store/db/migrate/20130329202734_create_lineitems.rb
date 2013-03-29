class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.integer :quantity
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :product_id
      t.integer :order_id
      t.decimal :sale_price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
