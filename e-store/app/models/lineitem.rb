class Lineitem < ActiveRecord::Base
  attr_accessible :order_id, :price, :product_id, :quantity, :sale_price
  
 # validates :order_id, :product_id, :quantity, :price, :presence => true
  # validates :price, :quantity, :numericality => { :greater_than_or_equal_to => 0 }
  
  belongs_to :order
  belongs_to :product
end
