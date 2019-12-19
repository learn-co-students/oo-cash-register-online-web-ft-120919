
class CashRegister

  attr_accessor :total, :discount
  

  def initialize(discount = nil)
    @total = 0
    @prices = []
    @discount = discount
    @items = []
    @item_quantity = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @item_quantity << quantity
    quantity.times {@prices << price}
    quantity.times {@items << title}
  end

  def apply_discount
    if @discount
      @total = (@total - ((total * @discount) / 100))
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @item_quantity[-1].times {@total -= @prices.pop}
    @item_quantity[-1].times {@items.pop}
    @item_quantity.pop
    @total
  end

end