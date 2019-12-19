class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quanity = 1)
    @price = price
    @total += price * quanity
    if quanity > 1
      counter = 0
      while counter < quanity
        @items << item
        counter += 1
      end
      
    else
      @items << item
    end
  end
  
  def apply_discount
    
    if @discount > 0 
      @reduce = (price * discount)/ 100
      @total -= @reduce
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.price
  end
  
end  
    
