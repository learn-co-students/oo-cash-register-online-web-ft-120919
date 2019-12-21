class CashRegister
  attr_accessor :total, :discount, :last_transaction
  
  def initialize (discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantitiy=1)
    self.total += (price * quantitiy)
    quantitiy.times do 
      @items << title
    end
    @last_transaction = price*quantitiy
  end
  
  def apply_discount
    self.total -= @discount*10
    if @discount > 0 
      return "After the discount, the total comes to $#{@total}."
    else 
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
end
