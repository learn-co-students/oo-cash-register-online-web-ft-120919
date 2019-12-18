class CashRegister
  attr_accessor :total, :discount, :cart, :price_list

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @cart = []
    @price_list = []
  end

  def add_item(item, price, num = 1)
    @total += (price * num)
    @price_list << (price * num)
    num.times do
      @cart << item
    end
  end

  def apply_discount
    if @discount > 0
      @total *= (1 - (@discount / 100.0))
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @price_list[-1]
  end

end
