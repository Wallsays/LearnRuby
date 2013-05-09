class Item

  def initialize
    @price = 30
  end

  def price
    @price
  end

  def price=(price_value)
    @price = price_value
  end

end

item1 = Item.new
item2 = Item.new
item3 = Item.new

puts item1.price=(10)
puts item2.price=15
puts item3.price

p item1
p item2
p item3
