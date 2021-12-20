=begin
________________________________________________________________________________
###### Understand the Problem ###### 

Write a method that takes one integer argument, which may be positive, 
negative, or zero. This method returns true if the number's absolute value 
is odd. You may assume that the argument is a valid integer value.

Input: One integer argument

Output: True or False 

Problem Domain: Boolean logic and method creation

Implict Requirements: - 
                      - 

Clarifying Questions: - 

Mental Model: Receive an integer, determine if absolute value is odd (true) or 
              not (false)
________________________________________________________________________________
###### Examples / Test Cases ###### 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


Edge Case(s): 

________________________________________________________________________________
###### Data Structure ###### 

Integers. Remainders when divided by 
________________________________________________________________________________
###### Algorithm ###### 

Receive input
Verify input arg is of type 'integer'
Take absolute value of integer
Divided integer by 2, if remainder == 0, integer is even, puts false
  if remainder != 0, integer is odd, puts true
________________________________________________________________________________
=end

###### Code ######

def is_odd?(num)
  if num.integer? && num.abs % 2 != 0
    'true' if num.abs % 2 != 0
  elsif num.integer? && num.abs % 2 == 0
    'false'
  elsif num.integer? == false
    puts 'ERROR: Input must be an integer (positive, negative, or zero)'
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

puts is_odd?(7.1)    # => false


