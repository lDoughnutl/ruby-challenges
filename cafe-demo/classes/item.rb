class Item
    attr_reader :price, :name, :cost    # :cost for testing
    def initialize(name, price, cost)
        @name = name
        @price = price
        @cost = cost
    end

    # Returns the profit for this item
    def profit
        return @price - @cost
    end
end

# Add a test for total_profit
