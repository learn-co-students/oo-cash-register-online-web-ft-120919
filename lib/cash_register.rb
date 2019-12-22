class CashRegister
attr_accessor :total, :discount, :price, :items
 def initialize(discount = 0)
   @total = 0
   @discount = discount
   @items = []
   @prices = []
 end
 def add_item(item, price, quantity = 1)
   quantity.times {@items << item}
   @prices << price.to_f * quantity.to_f
   new_item = price.to_f * quantity.to_f
   @total += new_item
 end
 def apply_discount
   if @discount > 0
     "After the discount, the total comes to $#{(@total -= (@discount.to_f/100.to_f) *@total.to_f).to_i}."
   else
     "There is no discount to apply."
   end
 end
 def items
   @items
 end
 def void_last_transaction
      @total -= @prices.pop
 end
end
