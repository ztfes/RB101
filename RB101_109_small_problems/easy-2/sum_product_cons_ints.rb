=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a program that asks the user to enter an integer greater than 0, then asks
 if the user wants to determine the sum or product of all numbers between 1 and 
 the entered integer.

Input:  

Output:   

Problem Domain:  

Implict Requirements: - 

Clarifying Questions: -

Mental Model: 
________________________________________________________________________________
###### Examples / Test & Edge Cases ######
 
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######


________________________________________________________________________________
###### Algorithm ######


________________________________________________________________________________
=end

###### Code ######

def sum_or_product()
  p 'Please enter an integer greater than 0:'
  num = gets.chomp.to_i
  p "Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp.to_s
  arr = Array.new(num) {|i| i + 1}
  sum = arr.sum
  
  product = 1
  for i in 1..num
    product = product * i
  end
  
  if sum_or_product == 's'
    puts "The sum of the integers between 1 and #{num} is #{sum}."
  elsif sum_or_product == 'p'
    puts "The product of the integers between 1 and #{num} is #{product}."
  end
end

sum_or_product()
