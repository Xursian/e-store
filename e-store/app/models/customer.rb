class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :creditcard_number, :current_credits, :email, :first_name, :last_name, :password, :phone_number, :postal_code, :provence_id
  
  validates :address, :city, :country, :creditcard_number, :current_credits, :email, :first_name, :last_name, :phone_number, :postal_code, :provence_id, :presence => true
  validates :email, :first_name, :last_name, :uniqueness => true

  belongs_to :provence
  has_many :orders
end
