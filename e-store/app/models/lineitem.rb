class Lineitem < ActiveRecord::Base
  attr_accessible :order_id, :price, :product_id, :quantity, :sale_price
  
  validate :order_id, :product_id, :quantity, :price, :presence => true
  validate :price, :quantity, :numericality => { :greater_than_or_equal_to => 0 }
  
  belongs_to :order
  belings_to :product
end
