require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"

@items = []
@items << AntiqueItem.new({ :price => 101, :weight =>100, :name => "car" })
@items << RealItem.new({ :weight =>100, :price => 101, :name => "kettle" })
@items << RealItem.new({ :weight =>100, :price => 101, :name => "dishwasher" })

cart = Cart.new("roman")
cart.add_item RealItem.new({ :weight =>100, :price => 101, :name => "car" })
cart.add_item RealItem.new({ :weight =>100, :price => 151, :name => "car" })
cart.add_item RealItem.new({ :weight =>100, :price => 121, :name => "kettle" })
# p cart.all_cars
# p cart.all_kettles

puts cart.kind_of?(Cart) # является ли объекь экземпляром пеоедаваемого класса
puts @items[0].kind_of?(Item)
puts @items[0].kind_of?(AntiqueItem)
puts @items[0].class == AntiqueItem
puts @items[0].class == Item
puts
puts @items[0].respond_to?(:info)
puts @items[0].respond_to?(:important_info)
puts
puts @items[0].send(:price) # equal to next line
puts @items[0].price
puts @items[0].send(:tax) # private method !!!!

method = "all_cars"
p cart.send(method)

