=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

Input: array of positive integers

Output: average of all numbers in array

Problem Domain: arrays and enumerator / math ops

Implict Requirements: - non-empy array

Clarifying Questions: -

Mental Model: sum elements of array. divide by # of elements
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

---- The tests above should print true. ----

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######

Strings
________________________________________________________________________________
###### Algorithm ######


________________________________________________________________________________
=end

###### Code ######

def average(numbers)
  numbers.sum / numbers.length
end

puts average([1, 5, 87, 45, 8, 8]) 
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
