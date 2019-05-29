require_relative './item'
require 'terminal-table'
require 'colorize'

# Define cafe menu
# Defines the latte menu item as a subclass of Item
class Latte < Item
    def initialize
        super("latte", 4, 2)
    end
end
# Defines the scone menu item as a subclass of Item
class Scone < Item
    def initialize
        super("scone", 5, 3)
    end
end
# Defines the tea menu item as a subclass of Item
class Tea < Item
    def initialize
        super("tea", 3, 1.5)
    end
end

class Menu
    def initialize
        # @menu is a hash with item.name as key and item as value
        @menu = {}
    end

    # Called to initialize menu with item instances
    def add_item(item)
        @menu[item.name] = item
        return self
    end

    # Will be called to get an instance of a named item
    def get_item(item_name)
        return @menu[item_name]
    end 

    def print_menu
        # Create rows for terminal-table
        rows = []
        @menu.each do |name, item|
            rows << [name, item.price]
            rows << :separator
        end
        rows.pop
        table = Terminal::Table.new :title => "Our menu".colorize(:blue), :headings => ["Item", "Price"], :rows => rows
        puts table
    end
end

# Test menu class
menu = Menu.new
# Add cafe items
menu.add_item(Latte.new).add_item(Tea.new).add_item(Scone.new)
# Print the menu
# puts menu
menu.print_menu
