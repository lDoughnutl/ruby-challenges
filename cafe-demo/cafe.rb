require_relative './classes/menu'
require_relative './classes/order'



# Initialize the menu
def initialize_menu(menu)
    menu.add_item(Latte.new)
    menu.add_item(Scone.new)
    menu.add_item(Tea.new)
end

# Get an item from the user for the order
    # if quit - return "quit"
    # if item - add the item, return the item
    # if invalid - return "invalid"
def get_item_and_add_to_order (menu,order,input)
    # puts "Adding an item"
    if input == "quit"
        return "quit"
    elsif input == "latte"
        item = menu.get_item("latte")
    elsif input == "scone"
        item = menu.get_item("scone")
    elsif input == "tea"
        item = menu.get_item("tea")
    else
        return "invalid"
    end

    # Got valid item, ask how many and add it to the order
    puts "How many?"
    # Doesn't handle invalid input
    qty = gets.to_i
    # If an invalid quantity is entered, such as 0 or a non-integer, return invalid
    if (qty == 0)
        return "invalid"
    end
    order.add_item(item, qty)
    # return the item
    return item

end


## Main application
# Initialise the order and menu
order = Order.new
menu = Menu.new
initialize_menu(menu)

# Print the menu
menu.print_menu

# Loop starts here (while result != quit)
# Ask user for input
# result = get_item_and_add_to_order(input)
# Repeat until quit
# Loop ends here

# print order
order.print_order

# print the profit for the cafe owner
puts "The profit for this order is $#{order.total_profit}"


# Testing
# test get_item_and_add_to_order with "quit" => return "quit"
puts "Testing get_item_and_add_to_order with quit"
puts get_item_and_add_to_order(menu,order,"quit")
# test get_item_and_add_to_order with "cheese" => return "invalid"
puts "Testing get_item_and_add_to_order with invalid"
puts get_item_and_add_to_order(menu,order,"invalid")
# test get_item_and_add_to_order with "latte" => return Latte item
puts "Testing get_item_and_add_to_order with latte"
puts get_item_and_add_to_order(menu,order,"latte")
# Expect order to contain a latte - quantity will be determined by the tester
# Example: {#<Item:0x0000563d0ecd11c0 @name="latte", @price=4, @cost=2>=>2}, where 2 is entered by the tester
p order
puts "Testing get_item_and_add_to_order with scone"
puts get_item_and_add_to_order(menu,order,"scone")
# Expect order to contain a latte - quantity will be determined by the tester
# Example: {#<Item:0x0000563d0ecd11c0 @name="scone", @price=5, @cost=3>=>2}, where 2 is entered by the tester
p order
puts "Testing get_item_and_add_to_order with tea"
puts get_item_and_add_to_order(menu,order,"tea")
# Expect order to contain a latte - quantity will be determined by the tester
# Example: {#<Item:0x0000563d0ecd11c0 @name="tea", @price=3, @cost=.50>=>2}, where 2 is entered by the tester
p order
