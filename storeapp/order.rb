class Order

  attr_reader :items

  include ItemContainer::Manager
  include ItemContainer::Info

  def initialize
    @items = [] # equals Array.new
    # ...
  end

  def place
    # actually place an order
  end

end

