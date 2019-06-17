# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb



# Your code here
puts "Give ur first input of words"
input1 = []
input1 += gets.split(" ") 
puts "Give ur Second input"
input2 = []
input2 += gets.split(" ")
output = []
i = 0
input2.each do |w|
    
    if w.downcase == input1[i].downcase
        output << "HIDDEN"
    else
        output << input1[i]
    end
    i += 1
end
puts output

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.