class CashRegister

  attr_accessor :total, :discount, :last_price

  def initialize(a_disc = 0)
    @total = 0
    @discount = a_disc 
    @items = []
    @last_price = 0
  end #init

  def add_item(title, price, quantity = 1)
    self.total = self.total + price * quantity
    quantity.times do
      @items << title
    end #times loop
    self.last_price = price * quantity 
  end 

  def apply_discount
    if self.discount > 0
      self.total = self.total - (discount/100.0)*self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end #if
  end #apply_discount 

  def items
    @items
  end #items

  def void_last_transaction
    self.total = self.total - self.last_price
    #@total -= @last_price 
  end #void_last_transaction


end #class