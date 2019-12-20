class CashRegister
    attr_accessor :total, :discount, :cart, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @cart = []
        @last_transaction = 0
        @discount = discount
    end

    def add_item(item_name, item_price, item_quantity = 1)
        item_quantity.times do 
            @cart << item_name
        end
        @last_transaction = (item_price * item_quantity)
        @total += @last_transaction
    end

    def apply_discount
        if @discount > 0
            discount_factor = 1.0 - (@discount/100.0)
            @total *= discount_factor
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end