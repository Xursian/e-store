class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :price, :sale_price, :stock_quantity, :type
end
