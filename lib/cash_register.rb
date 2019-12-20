class CashRegister
  attr_accessor :total, :discount, :items, :last_purchase

  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end 
  
  def add_item(unit_name, unit_price, quantity = 1)
    self.last_purchase = unit_price * quantity
    self.total += self.last_purchase
    quantity.times {self.items << unit_name}
  end 
  
  def apply_discount
    if discount > 0 
      float_discount = self.discount.to_f / 100.0 
      self.total -= (self.total * float_discount).to_i
      return "After the discount, the total comes to $#{self.total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    self.total -= self.last_purchase
    self.items.pop
  end 
end 