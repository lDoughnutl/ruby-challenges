# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb



# Your code here
puts "Enter the word you wish to change"
input = gets.split(//)
output = []
i = 0
input.each do |l|
   if l == "s"
    output << "th"
   else 
    output << input[i]
   end
   i += 1
end
puts output.join