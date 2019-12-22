require 'pry'

class CashRegister

    attr_accessor :total, :discount, :total_items, :item, :price, :quantity, :last_transaction
  
    def initialize(discount = 0)
       @total = 0
       @discount = discount
       @total_items = []
     end
  
     def add_item(item, price, quantity = 1)
         @item = item
         @price = price
        @quantity = quantity
        @last_transaction = last_transaction
         if quantity > 1
            i = 0
             while i < quantity
               @total_items << item
                 i+=1
             end
          else
            @total_items << item
          end
         
        @total += @price * @quantity
     end
     def apply_discount
       if @discount  != 0
         calc_discount = (self.discount/100.to_f)
         discount_total = (self.total * calc_discount)
         self.total  = self.total - discount_total
  
         "After the discount, the total comes to $#{self.total.to_i}."
       elsif @discount == 0
          "There is no discount to apply."
       end
     end
     def items
          self.total_items
    end
    def void_last_transaction
        self.last_transaction = self.quantity * self.price
        self.total = self.total - self.last_transaction
    end
  end
