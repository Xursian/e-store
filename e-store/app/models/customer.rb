class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :creditcard_number, :current_credits, :email, :first_name, :last_name, :password, :phone_number, :postal_code, :provence_id
end
