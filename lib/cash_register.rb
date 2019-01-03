class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  # def self.discount(disc)
  #   self.new
  # end

end
