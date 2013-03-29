class CreateProvences < ActiveRecord::Migration
  def change
    create_table :provences do |t|
      t.string :name
      t.decimal :pst, :precision => 8, :scale => 2
      t.decimal :gst, :precision => 8, :scale => 2
      t.decimal :hst, :precision => 8, :scale => 2
      t.decimal :shipping_cost, :precision => 8, :scale => 2
      t.integer :eta_days

      t.timestamps
    end
  end
end
