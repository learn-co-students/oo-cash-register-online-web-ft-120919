require 'pry'


class CashRegister
  
  attr_accessor :total, :discount, :items, :price, :quantity
  
  def initialize(discount = 0)
    @quantity = quantity
    @total = total = 0
    @discount = discount
    @items = []
    @price = price
    @final_total_price = []
  end
  
  def add_item(title, price, quantity = 1)
    if 1 < quantity 
     
      i = 0 #quantity counter
      while i < quantity
        @items << title #adds title to items array
      i += 1
      end
    
    else
      @items << title
    end
    @price = price
    @total += @price * quantity #multiplies the price by the amount of items
    @final_total_price << @price * quantity
    @total
    end
      
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @final_total_price.last
    # binding.pry
  end
end

    # if @discount == 0
    #   "There is no discount to apply."
    # else
    #   self.total -= (0.01 * @discount * @total).to_i
    #   "After the discount, the total comes to $#{self.total}."
    # end