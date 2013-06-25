class Cart

  attr_reader :items

  include ItemContainer

  def initialize
    @items = [] # equals Array.new
  end


end
