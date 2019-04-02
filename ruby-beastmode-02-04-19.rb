finishedShopping = 0
shoppingList = []
while finishedShopping == 0
    system "clear" or system "cls"
    puts "What would you like to buy?"
    itemBought = gets.chomp
    if itemBought.downcase == "ice cream"
        itemBought = "broccoli"
    elsif itemBought.downcase == "icecream"
        itemBought = "broccoli"
    end
    system "clear" or system "cls"
    shoppingList << "#{itemBought}"
    puts "You now have #{shoppingList.length} item/s in your list:"
    shoppingList = shoppingList.sort
    shoppingList.each { |item| puts item }
    puts "Anything else y or n?"
    optionChose = gets.chomp.downcase
    if optionChose == 'y'
        finishedShopping = 0
    elsif optionChose == 'n' 
        finishedShopping = 1
    else optionChose != 'y' && optionChose != 'n'
        puts "Invalid option"
        puts "Anything else y or n?"
    optionChose = gets.chomp.downcase
    if optionChose == 'y'
        finishedShopping = 0
    elsif optionChose == 'n' 
        finishedShopping = 1
    end
end
end