module ItemContainer

  module ClassMethods

    # expexted that item's price linked on dollar course
    def min_price
      100 # connect to the internet and receive currency price
    end

  end

  module InstanceMethods

    def add_item item
      unless item.price< self.class.min_price
        @items.push item
      end
    end

    # removes last item
    def remove_item
      @items.pop
    end

    def validate
      @items.each { |i| puts "Item has no price" if i.price.nil?}
    end

    def delete_invalid_items
      @items.delete_if { |i| i.price.nil? }
    end

    def count_valid_items
      @items.count { |i| i.price } # count true where item have price
    end

  end

  # this method named callback, its calls every time when class include ItemContainer
  def self.included(base) # in argument holds class in which putting module
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end

end

