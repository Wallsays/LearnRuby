class StoreApplication

  class << self

    def new
      unless @instance
        puts "loading files..."
        require_relative "string"
        require_relative "item_container"
        require_relative "item"
        require_relative "virtual_item"
        require_relative "real_item"
        require_relative "antique_item"
        require_relative "cart"
        require_relative "order"
      end
      @instance ||= self # сам этот класс (не экземпляр класса, а сам класс)
    end

  end

end
