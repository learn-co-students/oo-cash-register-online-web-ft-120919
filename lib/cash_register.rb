# class CashRegister
# attr_accessor :total, :discount, :items, :price
# def initialize(discount = 0) 
#   @total = 0 
#   @discount = discount
#   @items = []
# end
# # def add_item(title,price,quantity = 1)
# #   @total += price * quantity
# #   @price = @price
# #   if quantity > 1
# #       counter = 0
# #       while counter < quantity
# #         @items << title
# #         counter += 1
# #       end
# #     else
# #       @items << title
# #     end
   
# # end
# def add_item(item, price, quantity = 1)
#     @price = price
#     @total += price * quantity
#     if quantity > 1
#       counter = 0
#       while counter < quantity
#         @items << item
#         counter += 1
#       end
#     else
#       @items << item
#     end
#   end
# def apply_discount
#   # if @discount > 0
#   #     @to_take_off = (price * discount)/100
#   #     @total -= @to_take_off
#   #     return "After the discount, the total comes to $#{total}."
#   #   else
#   #     return "There is no discount to apply."
#   #   end
# if @discount > 0
#       @to_take_off = (price * discount)/100
#       @total -= @to_take_off
#       return "After the discount, the total comes to $#{total}."
#     else
#       return "There is no discount to apply."
#     end
# end

# def void_last_transaction
# @total -= @price
# end

# end
class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  
  
end