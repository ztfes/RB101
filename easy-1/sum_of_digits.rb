=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a method that takes one argument, a positive integer, and returns 
sthe sum of its digits.

Input: positive integer

Output: sum of digits in integer

Problem Domain: arrays and enumerator / math ops

Implict Requirements: - non-empy array

Clarifying Questions: -

Mental Model: sum elements of array. divide by # of elements
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

---- The tests above should print true. ----

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######

integers
________________________________________________________________________________
###### Algorithm ######

For a challenge, try writing this without any basic looping constructs 
(while, until, loop, and each).
________________________________________________________________________________
=end

###### Code ######

def sum(num)
	num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
