# Write a program that accepts someone's name and age, and responds
# as shown here:







# Program is run and outputs:
# "What is your name?"
puts "What is your name?"
    name = gets.capitalize
# User inputs: "Tom"

# Program outputs:
# "Hi Tom! How old are you?"
puts "Hi #{name}, How old are you?"
age = gets.to_i
# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"
puts "Wow! you are #{age} years old. Congratulations!"

# Beast mode challenge:
# Ater the above, the program calculates how many years until
# the user is 100 years old and tells the user. For example, for
# our user input above (Tom and 40), after outputing 
# "Wow! You are 40 years old. Congratulations!"
# The program also outputs:
# "Tom, in 60 years you will be 100 years old!"
age100 = 100 - age
puts "#{name}, in #{age100} year you will be 100 years old!"