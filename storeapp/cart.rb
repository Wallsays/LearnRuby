class Cart

  attr_reader :items

  def initialize
    @items = [] # equals Array.new
  end

  def add_item item
    @items.push item
  end

  # removes last item
  def remove_item
    @items.pop
  end

end
