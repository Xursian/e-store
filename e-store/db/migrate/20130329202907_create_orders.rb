class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :pst_rate, :precision => 8, :scale => 2
      t.decimal :gst_rate, :precision => 8, :scale => 2
      t.decimal :hst_rate, :precision => 8, :scale => 2
      t.integer :customer_id
      t.decimal :balance, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
