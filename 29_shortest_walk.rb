# Shortest walk
# Difficulty: hard

# A man was given directions to go from one point to another.
# The directions were "NORTH", "SOUTH", "WEST", "EAST". 
# Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too. 
# Going to one direction and coming back the opposite direction is a needless effort. 
# Since this is the wild west, with dreadfull weather and not much water, 
# it's important to save yourself some energy, otherwise you might die of thirst!

# How I crossed the desert the smart way.
# The directions given to the man are, for example, the following:

# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].

# You can immediatly see that going "NORTH" and then "SOUTH" is not reasonable, 
# better stay to the same place! So the task is to give to the man a simplified 
# version of the plan. A better plan in this case is simply:

# ["WEST"]

# Other examples:
# In ["NORTH", "SOUTH", "EAST", "WEST"], 
# the direction "NORTH" + "SOUTH" is going north and coming back right away. 
# What a waste of time! Better to do nothing.

# The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, 
# therefore, the final result is [] 

# In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], 
# "NORTH" and "SOUTH" are not directly opposite but they become directly 
# opposite after the reduction of "EAST" and "WEST" so the whole path is reducible 
# to ["WEST", "WEST"].

# Task
# Write a function shortest_walk which will take an array of strings and 
# returns an array of strings with the needless directions removed 
# (W<->E or S<->N side by side).

# Examples
# shortest_walk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) # => ["WEST"]
# shortest_walk(["NORTH", "SOUTH", "EAST", "WEST"]) # => []

# The test with the challenge use rspec

def shortest_walk(walk)
x = 0
y = 0
shortest = [] 
    walk.each do |direction|
    case direction
    
        when "NORTH"
            y += 1
        when "SOUTH"
            y -= 1
        when "WEST"
            x -= 1
        when "EAST"
            x += 1
        end       
    end

shortest += ("NORTH " * [y, 0].max).split(" ")
shortest += ("SOUTH " * [-y, 0].max).split(" ")
shortest += ("WEST " * [-x, 0].max).split(" ")
shortest += ("EAST " * [x, 0].max).split(" ")

puts shortest
end

# Testing
# shortest_walk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
# shortest_walk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST","NORTH","NORTH" ])
shortest_walk(["EAST","EAST","EAST","WEST","SOUTH", "SOUTH" ])