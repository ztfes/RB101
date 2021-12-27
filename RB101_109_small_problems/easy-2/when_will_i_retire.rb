=begin
________________________________________________________________________________
###### Understand the Problem ######

Build a program that displays when the user will retire and how many 
years she has to work till retirement.

Input: user input of length and width in meters.

Output:  result of multiplying length*width for area (m^2 and ft^2)

Problem Domain: user input, math operations

Implict Requirements: - 

Clarifying Questions: -

Mental Model: 
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######


________________________________________________________________________________
###### Algorithm ######


________________________________________________________________________________
=end

###### Code ######

require 'date'

def retirementage()
  puts 'What is your age?'
  current_age = gets.chomp.to_i
  puts 'At what age would you like to retire?' 
  retire_age = gets.chomp.to_i
  current_year = Date.today.year
  retire_year = current_year + (retire_age - current_age)
  years_left = retire_year - current_year
  puts "It's #{current_year}. You will retire in #{retire_year}."
  puts "You have only #{years_left} years of work to go!"
end

retirementage()
