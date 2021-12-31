# Write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise. A palindrome reads the same forward
# and backward. For this exercise, case matters as does punctuation and spaces.

# Examples:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(word_or_phrase)
  word_or_phrase == word_or_phrase.reverse
end

puts palindrome?('madam') # == true
puts palindrome?('Madam') # == false          # (case matters)
puts palindrome?("madam i'm adam") # == false # (all characters matter)
puts palindrome?('356653') # == true

puts palindrome?("Madam, I'm Adam")
