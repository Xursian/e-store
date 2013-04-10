class Cart_item
  attr_reader :itemNo, :itemQty
  
  def initialize(itemNo, itemQty)
    @itemNo = itemNo
    @itemQty = itemQty
  end
  
  def increase_qty(amount)
    itemQty += amount
  end
  
end