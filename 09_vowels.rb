# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def count_vowels (string)
  vowels = []
  vowels << string.scan("a")
  vowels << string.scan("e")
  vowels << string.scan("i")
  vowels << string.scan("o")
  vowels << string.scan("u")

  puts vowels
end

count_vowels("Hello World")