class Order < ActiveRecord::Base
  attr_accessible :balance, :customer_id, :gst_rate, :hst_rate, :pst_rate, :status
  
  validates :customer_id, :balance, :status, :presence => true
  validates :balance, :hst_rate, :pst_rate, :gst_rate, :numericality => { :greater_than_or_equal_to => 0 }
  
  belongs_to :customer
  has_many :lineitems, :through => :products
end
