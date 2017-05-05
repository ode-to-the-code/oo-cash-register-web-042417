require 'pry'

class CashRegister
attr_accessor :discount, :total, :items

  def initialize(discount=nil)
    @last_transaction = []
    @items = []
    @total = 0
    @discount = discount

  end

  def apply_discount
    if discount
      @total = total * (100 - discount) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  # def total
  #   @total
  # end

  def add_item(title, price, quantity = 1)
    @last_transaction << price
    quantity.times do
      @items << title
    end
      @total += price * quantity
    end


  def

  #   last_completed_transaction = []
  #   if quantity
  #     @total = (price*quantity)
  #     last_completed_transaction << @total
  #   else
  #     last_completed_transaction << (@total += price)
  #   end
  #
  #   sum = 0
  #   last_completed_transaction.each do |num|
  #    sum += num
  #   end
  #
  #   last_completed_transaction << sum
  #   return sum
  #   # binding.pry
  #



end

#
# def add_item(title, price, quantity = nil)
#   last_completed_transaction = []
#   if quantity
#     @total = (price*quantity)
#     last_completed_transaction << @total
#   else
#     last_completed_transaction << (@total += price)
#   end
#
#   last_completed_transaction.each do |num|
#   final_total += num
#   end
#
#   final_total
#   # binding.pry
#
end
#

def void_last_transaction
  @total -= @last_transaction[-1]
end

end
