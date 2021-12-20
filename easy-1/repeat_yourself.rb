=begin
________________________________________________________________________________
###### Understand the Problem ###### 

Write a method that takes two arguments, a string and a positive integer, 
and prints the string as many times as the integer indicates.

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

repeat('Hello', 3)

Expected output:

Hello
Hello
Hello


Edge Case(s): repeat(Hello, 3)
              repeat(:Hello,3)
              repeat('Hello')

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

def repeat(str, num = 1)
  num.times {puts str.to_s}
end


repeat('Hello', 3)
repeat('There')
repeat('Hello', 0)
# puts repeat(Hello, 3)
# puts repeat(:Hello,3)
# puts repeat('Hello')
