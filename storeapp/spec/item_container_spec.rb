require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/item_container"

class ItemBox
  
  include ItemContainer

  def initialize
  	@items = []
  end

end

describe ItemContainer do
  
  before(:each) do
    @box = ItemBox.new
  	@item1 = Item.new("kettle", price:200)
  	@item2 = Item.new("kettle", price:200)
  end

  # rspec spec item_container.rb -l25
  it "shows minimum price for item" do
  	ItemBox.min_price.should be(100)
  end

  it "adds items into the containe" do
  	@box.add_item(@item1)
  	@box.add_item(@item2)
  	@box.items.should have(2).items #last word "items" will be transform into class Item
  end

  it "removes items from the box" do
    @box.add_item(@item1)
    @box.add_item(@item2)
    @box.remove_item.should be(@item2)
    @box.remove_item
    @box.items.should be_empty
  end

  it "raises error if user trying to add anything else but an item" do
    lambda { @box.add_item("smth else") }.should raise_error
  end

end