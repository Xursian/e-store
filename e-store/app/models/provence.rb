class Provence < ActiveRecord::Base
  attr_accessible :eta_days, :gst, :hst, :name, :pst, :shipping_cost, :code
  
  validates :eta_days, :shipping_cost, :name, :code, :presence => true 
  validates :shipping_cost, :gst, :hst, :pst, :numericality => { :greater_than_or_equal_to => 0 }
  validates :name, :code, :uniqueness => true
  
  has_many :customers
end
