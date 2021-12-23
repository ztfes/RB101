=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a method that takes two arguments, a positive integer and a boolean, 
and calculates the bonus for a given salary. If the boolean is true, the bonus 
should be half of the salary. If the boolean is false, the bonus should be 0.

Input: positive integer & a boolean

Output: sum of digits in integer

Problem Domain: arrays and enumerator / math ops

Implict Requirements: - non-empy array

Clarifying Questions: -

Mental Model: sum elements of array. divide by # of elements
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

---- The tests above should print true. ----

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######

integers 
________________________________________________________________________________
###### Algorithm ######


________________________________________________________________________________
=end

###### Code ######

def calculate_bonus(salary, earn)
  earn ? salary/2 : 0
end

puts calculate_bonus(2800, true)

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
