class CashRegister
  attr_accessor :total, :discount, :price, :last_transaction

  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity
    @last_transaction = price * quantity

    quantity.times do
      @@items << title
    end
  end

  def self.items
    @@items
  end

  def void_last_transaction
  end

end
