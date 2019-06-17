# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?

#def largest_number (number_1, number_2)
  # Your code here
#end

#largest_number(100,50)
# This gets the Users first number
puts "Pick a number?"
    number1 = gets.to_i
#This gets the Users Second Number
puts "Pick a Second Number?"
   number2 = gets.to_i

#These are the function to compare the numbers
if number1 < number2
  puts "#{number2}"
  
elsif number2 < number1
    puts "#{number1}"
  #This loop is to annoy anyone who is trying to break my largest number program.
  elsif number1 == number2
    loop do
    puts "The numbers are equal"
    end
  else 
    puts "Please enter a number not letters"
  end