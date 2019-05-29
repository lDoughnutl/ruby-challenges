# Require for testing
require_relative './item'
require_relative './menu'
require 'terminal-table'


class Order
    def initialize
        # @order is a hash where the item is the key, and the quantity is the value
        @order = Hash.new(0)
    end

    def add_item(item, quantity)
        @order[item] += quantity
        return self
    end

    # Returns the total price for @order
    def total_price
        total = 0
        @order.each do |item,qty|
            total += item.price * qty
        end
        return total
    end

    def total_profit
        total = 0
        # For each item, add up the profit
        @order.each do |item, qty|
            total += item.profit * qty
        end
        return total
    end

    def print_order
        rows = []        
        @order.each do |item, qty|
            rows << [qty, item.name.capitalize]
            rows << :separator
        end
        
        rows << ["Total:", "$#{total_price}"]

        table = Terminal::Table.new :title => "Your Order", :headings => ["Qty","Item"], :rows => rows
        puts table
    end

    # For testing
    def inspect
        output = "{\n"
        @order.each do |item,qty|
            output += "name: #{item.name}, price:#{item.price}, cost: #{item.cost}, quantity: #{qty}\n"
        end
       
        output += "}"
        return output
    end
end

# Testing for Item and Order class here

test_order = Order.new

# # 1. We can create items and add them to an order
test_order.add_item(Item.new("latte", 4, 2),2).add_item(Item.new("scone", 5, 3),1)
# p test_order
# puts

# test_order = Order.new
# latte = Latte.new
# test_order.add_item(latte,2).add_item(latte,1)
p test_order
puts


# 2. We can print the order
test_order.print_order

# # 3. We can calculate total_profit
# puts "total profit test: $#{test_order.total_profit}"

# # 4. Test with an empty order
# empty_order = Order.new
# empty_order.print_order
# puts "total profit test: $#{empty_order.total_profit}"