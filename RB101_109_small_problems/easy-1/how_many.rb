=begin
________________________________________________________________________________
###### Understand the Problem ###### 

Write a method that counts the number of occurrences of each 
element in a given array.

Input: array

Output: integer value of # of times an element shows up in an array

Problem Domain: Parsing arrays element by element

Implict Requirements: - 
                      - 

Clarifying Questions: - 

Mental Model: Receive an array of elements. Parse through elements. Add the 
              occurence of each element to a unique counter
________________________________________________________________________________
###### Examples / Test Cases ###### 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

car => 4
truck => 3
SUV => 1
motorcycle => 2


Edge Case(s): n/a

________________________________________________________________________________
###### Data Structure ###### 

Arrays.
________________________________________________________________________________
###### Algorithm ###### 

Receive array
Initialize counters for each unique element ID
Loop over array
for each element encountered, add its occurence to associated counter
________________________________________________________________________________
=end

###### Code ######

def count_occurrences(array)
  array.tally.each {|k,v| puts "#{k} => #{v}"} 
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
