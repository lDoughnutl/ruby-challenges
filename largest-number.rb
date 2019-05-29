#Defining the method
def largest(n1,n2)
    if n1 > n2
        return n1
    elsif n2 > n1
        return n2
    else n1 == n2
        return n1
    end
end

#Obtaining the numbers
puts "Pick your first number"
    n1 = gets.to_i

puts "Pick your second number"
    n2 = gets.to_i

puts "Pick your third number"
    n3 = gets.to_i

#Clearing the screen to make it easier to read 
system "clear"

#Grabbing the largest number
largest(n1, n2)

#Comparing the largest number to n3
if largest(n1, n2) > n3
    puts largest(n1, n2)
elsif largest(n1, n2) == n3
    puts "At least two of these numbers are equal"
else largest(n1, n2) < n3
    puts n3
end

#Allowing the user to end the program once they're satisfied
puts "Press enter to exit"
gets
system "clear"
