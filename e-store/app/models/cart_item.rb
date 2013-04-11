class Cart_item
  attr_accessor :itemNo, :itemQty
  
  def initialize(itemNo, itemQty)
    @itemNo = itemNo
    @itemQty = itemQty.to_i
  end
  
end