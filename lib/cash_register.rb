
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, qty = 1)
    @total += price * qty
    qty.times {@items << item}
    @last_item = [item, price, qty]
  end
  
  def apply_discount
    result = ""
    if @discount == 0
      result = "There is no discount to apply."
    else
      total = @total
      total *= 1.00 - (@discount / 100.00)
      @total = total.to_i
      result = "After the discount, the total comes to $#{@total}."
    end
    result
  end
  
  def void_last_transaction
    @total -= @last_item[1] * @last_item[2]
    @last_item[2].times {@items.pop}
  end

end
