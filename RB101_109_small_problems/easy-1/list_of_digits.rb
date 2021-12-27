=begin
________________________________________________________________________________
###### Understand the Problem ###### 

Write a method that takes one argument, a positive integer, and 
returns a list of the digits in the number.

Input: One integer argument

Output: Indexed list (array) of the digits in the number

Problem Domain: Splitting variables

Implict Requirements: - 
                      - 

Clarifying Questions: - 

Mental Model: Receive an positive integer, turn the digits of the integer into
              a list
________________________________________________________________________________
###### Examples / Test Cases ###### 

puts digit_list(12345)  == [1, 2, 3, 4, 5]    # => true
puts digit_list(7)      == [7]                # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444)    == [4, 4, 4]          # => true

Edge Case(s): 

________________________________________________________________________________
###### Data Structure ###### 

Integers. Arrays.
________________________________________________________________________________
###### Algorithm ###### 

Receive input
Verify input arg is a positive 'integer'
split the integer by digit
map the digits to an array
________________________________________________________________________________
=end

###### Code ######

def digit_list(num)
  num.to_s.split('').map {|x| x.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
