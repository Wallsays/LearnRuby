class Item

  def initialize
    @price = 30
  end

 # attr_accessor
 attr_reader :price, :weight
 attr_writer :price

end

item1 = Item.new

item1.price  = 10
item1.weight = 21

puts item1.price
puts item1.weight

p item1
