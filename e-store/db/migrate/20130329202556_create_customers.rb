class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :email
      t.integer :provence_id
      t.string :phone_number
      t.string :creditcard_number
      t.decimal :current_credits, :precision => 8, :scale => 2
      t.string :password

      t.timestamps
    end
  end
end
