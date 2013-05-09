require_relative "cart"
require_relative "item"

# cart = Cart.new
# cart.add_item(Item.new)
# cart.add_item(Item.new)

# p cart.items

# cart.remove_item

# p cart.items

# cart.validate

item = Item.new({ :price => 10, :weight =>100, :name => "Car" })
item.info { |attr| puts attr}
