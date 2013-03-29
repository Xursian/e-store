class Order < ActiveRecord::Base
  attr_accessible :balance, :customer_id, :gst_rate, :hst_rate, :pst_rate, :status
end
