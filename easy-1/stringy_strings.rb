=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

Input: Positive integer

Output: alternating strings of 1s and 0s

Problem Domain: 

Implict Requirements: -

Clarifying Questions: -

Mental Model: 
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

---- The tests above should print true. ----

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######

Strings
________________________________________________________________________________
###### Algorithm ######

Receive input integer
starting with 1, string together alternating 1s and 0s integer times
print as string
________________________________________________________________________________
=end

###### Code ######

def stringy(integer)
  string = []
  x = 1
  while x <= integer
    if x.odd?
      string.append('1')
    else
      string.append('0')
    end
    x += 1
  end
  string.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
