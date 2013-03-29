class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.integer :quantity
      t.decimal(8,2) :price
      t.integer :product_id
      t.integer :order_id
      t.decimal(8,2) :sale_price

      t.timestamps
    end
  end
end
