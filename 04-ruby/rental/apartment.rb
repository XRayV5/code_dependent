class Apartment
  attr_accessor :price, :renters

  def initialize(price)
    @price = price
    @renters = []
  end

end