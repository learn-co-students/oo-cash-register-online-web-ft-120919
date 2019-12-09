class CashRegister
  attr_accessor :total, :items, :discount
  
  def initialize(discount = false)
    @total = 0 
    @items = []
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @items << {
      title: title,
      price: price,
      quantity: quantity
    }
    
    @total += price * quantity
  end
  
  def apply_discount
    if @discount
      @total = @total * 0.8
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end
  end
  
  def items 
    item_title_array = []
    @items.each do |item|
      item[:quantity].times do 
        item_title_array << item[:title]
      end
    end
    item_title_array
  end
  
  def void_last_transaction
    @total -= @items[-1][:price] * @items[-1][:quantity]
    @items.pop()
  end
end
