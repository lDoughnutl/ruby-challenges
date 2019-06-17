# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

def in_array (needle, haystack)
  haystack.include?(needle)
end


# Beast Mode:

# Redo the challenge but try solving it again in a different way.
def in_array2(needle, haystack)
  for hay in haystack
  if hay == needle
    return true 
  end
  return false
end