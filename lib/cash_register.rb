class CashRegister 
  
  attr_accessor :total, :discount, :price, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  
  def total
    @total
  end 
  
  
  def add_item(title, price, amount = 1)
    if amount > 1 
      counter = 0 
      while counter < amount
      @items << title 
      counter += 1 
    end 
  else 
    @items << title 
  end 
    @price = price 
    @total += price * amount
    @last_transaction = price * amount
  end 
  
  def apply_discount
    if @discount > 0 
     price_drop = (price * discount)/100
     @total -= price_drop
     return "After the discount, the total comes to $#{total}."
   else 
     return "There is no discount to apply."
  end 
end 
  
 def void_last_transaction
  @total -= @last_transaction
  end 
 
  
end 
