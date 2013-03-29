class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :price, :sale_price, :stock_quantity, :type
  
  validate :description, :name, :price, :stock_quantity, :type, :presence => true
  validate :name, :uniqueness => true
  validate :price, :numericality => { :greater_than_or_equal_to => 0 }
  
  belongs_to :lineitems, :through => :orders
end
