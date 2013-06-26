require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do

  # not really needed
  # it "makes sure the cart is initialized correctly" do
  # 	cart = Cart.new(...)
  # 	cart.items.should be_kind_of(Array)
  # 	cart.owner.should_not be_nil
  # end

  describe "managing items" do

    it "adds items into the cart" do
      cart = Cart.new("roman")
      item1 = Item.new("kettle", price: 200)
      item2 = Item.new("car"   , price: 200)
      cart.add_items(item1, item2)
      cart.items.should include(item1,item2)
    end

  it "removes items from itself"

  end
  
  it "counts items in itself"
  it "places order using all items were added into the cart"
  it "clear itself off items after an order is placed"

end
