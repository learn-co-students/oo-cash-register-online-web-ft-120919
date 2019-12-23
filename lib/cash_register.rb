


class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(total = 0)
    
    @total = total
    
    @discount = discount
  end
  
  def self.discount(amount)
    100.0 % 5 = amount
  end
  
end
