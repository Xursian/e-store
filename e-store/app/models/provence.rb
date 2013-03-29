class Provence < ActiveRecord::Base
  attr_accessible :eta_days, :gst, :hst, :name, :pst, :shipping_cost
  
  validates :eta_days, :shipping_cost, :name, :presence => true 
  validates :shipping_cost, :gst, :hst, :pst, :numericality => { :greater_than_or_equal_to => 0 }
  validates :name, :uniqueness => true
  
  has_many :customers
end
