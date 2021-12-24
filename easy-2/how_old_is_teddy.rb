=begin
________________________________________________________________________________
###### Understand the Problem ######

Build a program that randomly generates and prints Teddy's age. To get the
age, you should generate a random number between 20 and 200.

Input: RNG age

Output: String + RNG age

Problem Domain: strings and RNG

Implict Requirements: - 

Clarifying Questions: -

Mental Model: 
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

Example Output: "Teddy is 69 years old!"
Edge Case(s):
________________________________________________________________________________
###### Data Structure ######

integers
________________________________________________________________________________
###### Algorithm ######

Initialize print statement with #{random age}
________________________________________________________________________________
=end

###### Code ######

def age (name = 'Teddy', lower, upper)  
  puts "#{name} is #{rand(lower..upper)} years old!"
end

age(20,200)
age('First-Name', 20,200)
