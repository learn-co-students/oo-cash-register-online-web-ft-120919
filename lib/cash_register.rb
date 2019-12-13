class CashRegister

  attr_accessor :discount, :total, :last_item

  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times { @items << title }
    @total += price * quantity
    @last_item = [title, price, quantity]
  end

  def apply_discount
    d = (100.00 - @discount) / 100.00
    @total *= d
    if @discount != 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item[1] * @last_item[2]
    @items.pop(@items.length - @last_item[2])
  end

end
