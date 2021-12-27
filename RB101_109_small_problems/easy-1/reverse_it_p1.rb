=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a method that takes one argument, a string, and returns a new
string with the words in reverse order.

Input: String

Output: String printed in reverse

Problem Domain: Parsing and manipulating strings

Implict Requirements: -

Clarifying Questions: -

Mental Model: Receive a string and integer input, print the string to the screen
              the amount of times equal to the integer value received.
________________________________________________________________________________
###### Examples / Test Cases ######

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

The tests above should print true.

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######

Strings and integers.
________________________________________________________________________________
###### Algorithm ######

Receive input string
Reverse string, verify separated by spaces if applicable
Print string
Compare output to input, return 'true' if they match
________________________________________________________________________________
=end

###### Code ######

def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

# puts reverse_sentence('Hello World')

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
