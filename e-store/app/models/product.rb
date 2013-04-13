class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :price, :sale_price, :stock_quantity, :item
  
  validates :description, :name, :price, :stock_quantity, :item, :presence => true
  validates :name, :description, :uniqueness => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
  
  has_many :lineitems
  has_many :orders, :through => :lineitems
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
