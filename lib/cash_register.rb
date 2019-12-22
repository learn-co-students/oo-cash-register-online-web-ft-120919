require 'pry'

class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0.00
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
    #accepts a title and a price and increases the total
    #also accepts an optional quantity
    #doesn't forget about the previous total
        self.total += price * quantity
        quantity.times do
            @items << title
        end
        # binding.pry
        @last_transaction = price * quantity #multiplies each 
    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100 - discount).to_f/100)).to_i #set the instance method = to the operation for applying discount
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
        
        # binding.pry
    end

    def items
        # binding.pry
        @items
    end

    def void_last_transaction
        self.total -= @last_transaction
    end

end