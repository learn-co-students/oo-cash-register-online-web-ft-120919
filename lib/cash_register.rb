require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_txn

  def initialize (discount=100)
    @total = 0
    @discount=discount
    @items=[]
  end

  def add_item(title, price, quantity=1)
    @price = price
    subtotal = price* quantity
    @last_txn = subtotal
    @total += subtotal
    count =0
    while count<quantity
      @items<< title
      count+=1
    end
  end

  def apply_discount
    if @discount == 100
      message = "There is no discount to apply."
    else
      discount = (@discount/100.to_f)
      discounted = discount * @price
      #binding.pry
      @total -= discounted
      @total = @total.to_i
      message = "After the discount, the total comes to $#{@total}."
    end
    message
  end

  def void_last_transaction
    @total -= @last_txn
  end

end
