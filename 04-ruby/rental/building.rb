class Building
  attr_accessor :address, :apartments

  def initialize(price)
    @price = price
    @apartments = []
  end

end