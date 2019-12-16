require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :array_items, :last_transaction
  # attr_reader :total 

  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @array_items = []
    @last_transaction = nil 
  end
  
  def add_item(title, price, quantity = 1)
    # self.last_transaction = { "#{title}" => price *quantity }
    self.last_transaction = price *quantity
    i = 1 
    while i <= quantity do 
      self.array_items << title
      i+=1
    end
    
    self.total += price * quantity
    self.array_items
    
  end
  
  
  def apply_discount()
    if discount != 0
       
      self.total = (100 - discount) / 100.0 * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
  def items
    self.array_items
  end
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
  
  
end 