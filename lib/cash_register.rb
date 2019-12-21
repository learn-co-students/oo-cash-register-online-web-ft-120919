
require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0 # sets an instance variable @total on initialization to zero
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total += price*quantity #doesn't forget about the previous total: pass when changes from = to +=
        # @items += [title]*quantity  # @items << title*quantity -- coudln't hold the quantity 
        # if quantity > 1
        #     counter 0
        #     while counter < quantity 
        #         @items << item
        #         counter +=1
        #     end
        # else 
        #     @item << item
        # end
        quantity.times do 
            @items << title
        end
        @last_transaction = price*quantity

    end

    def apply_discount()
        if @discount > 0 
            @discount = @discount/100.to_f
            @total = @total - (@total * (@discount))
            "After the discount, the total comes to $#{total.to_i}."
        else
          "There is no discount to apply."
        end
        
    end

    def items
        @items
    end

    def void_last_transaction
        # binding.pry
        self.total -= @last_transaction
        # @total -= @price
        # @items.pop
        # if @items.empty? 
        #     @total = 0.0
        # else
        #     "Your new total is "
        # end

        # @total -= @price
        # @items.pop
        # if @items.empty? 
        #     @total.clear
        # else
        #     "Your new total is "
        # end

        # @items.pop
        # if @items.size > 0.0
        #      "your new total is #{@total.to_i}"
        #  else @item.size <= 0.0
        #      @total = 0.0
        #  end

    end


end





# CashRegister
#   ::new
#     optionally takes an employee discount on initialization (FAILED - 2)
#   #total
#     returns the current total (FAILED - 3)
#   #add_item
#     accepts a title and a price and increases the total (FAILED - 4)
#     also accepts an optional quantity (FAILED - 5)
#     doesn't forget about the previous total (FAILED - 6)
#   #apply_discount
#     the cash register was initialized with an employee discount
#       applies the discount to the total price (FAILED - 7)
#       returns success message with updated total (FAILED - 8)
#       reduces the total (FAILED - 9)
#     the cash register was not initialized with an employee discount
#       returns a string error message that there is no discount to apply (FAILED - 10)
#   #items
#     returns an array containing all items that have been added (FAILED - 11)
#   #void_last_transaction
#     subtracts the last item from the total (FAILED - 12)
#     returns the total to 0.0 if all items have been removed (FAILED - 13)