=begin
________________________________________________________________________________
###### Understand the Problem ###### 

Write a method that takes one argument, a string, and returns a new 
string with the words in reverse order.

Input: String and Integer

Output: String repeated Integer times (printed to screen)

Problem Domain: Defining and developing methods

Implict Requirements: - 1st input arg must be receieved as a string or converted
                      - .to_s

Clarifying Questions: - Is there a default integer if one is not provided?

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

Receive input
Verify first arg is string or covertable to string
Print string arg integer times. Print once if not integer provided (default)
________________________________________________________________________________
=end

###### Code ######

