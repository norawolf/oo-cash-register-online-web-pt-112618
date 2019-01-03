require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity
    @last_transaction = price * quantity

    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount != 0
      binding.pry
      @total = @total * (@discount.to_f/100)
      "After the discount, the total comes to $#{@total}."
      
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
