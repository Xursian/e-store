class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal(8,2) :pst_rate
      t.decimal(8,2) :gst_rate
      t.decimal(8,2) :hst_rate
      t.integer :customer_id
      t.decimal(8,2) :balance

      t.timestamps
    end
  end
end
