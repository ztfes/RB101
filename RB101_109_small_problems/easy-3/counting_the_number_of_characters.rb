###### Understand the Problem ######

# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be 
# counted as a character.

# Input:  User inputs 2 integers > 0

# Output: Message to user whether 6th integer is included in array of first 5
#         integer inputs

# Problem Domain: Arrays, user input

# Implict Requirements: - integers, not floats or strings

# Clarifying Questions: -

# Mental Model:

###### Examples / Test & Edge Cases ######

# Input: Please write word or multiple words: walk

# Output: There are 4 characters in "walk".

# Edge Case(s): n/a

###### Data Structure ######

###### Algorithm ######

###### Code ######

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt('Please write a word or multiple words')

word_or_words = Kernel.gets.chomp.to_s

def character_counter(phrase)
  number_of_chars = phrase.split(' ').map {|word| word.count(word)}.sum
  prompt("There are #{number_of_chars} characters in '#{phrase}'")
end

character_counter(word_or_words)
  
