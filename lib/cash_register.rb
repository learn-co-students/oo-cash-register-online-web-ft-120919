require 'pry'


class CashRegister
  
  attr_accessor :total, :discount, :items, :final_total_price
  
  def initialize(discount = 20)
    
    @total = total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    if 1 < quantity 
      # binding.pry
     
      i = 0 #quantity counter
      while i < quantity
        @items << title #adds title to items array
      i += 1
      end
    
    else
      @items << title
    end
     @total += price * quantity #multiplies the price by the amount of items
     @final_total_price = @total
     @total
    end
      
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      @total
     puts "After the discount, the total comes to $#{@total.to_i}."
    
    else 
      "There is no discount to apply."
    end
  end
  
end
