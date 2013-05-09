class Item

  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end

 # attr_accessor
 attr_reader :price, :weight
 attr_writer :price

end

item1 = Item.new({ :weight => 10, :price => 30 })
puts item1.price
puts item1.weight

p item1
