=begin
________________________________________________________________________________
###### Understand the Problem ######

#Build a program that asks a user for the length and width of a room in meters 
 and then displays the area of the room in both square meters and square feet.

#Note: 1 square meter == 10.7639 square feet

#Do not worry about validating the input at this time.

Input: user input of length and width in meters.

Output:  result of multiplying length*width for area (m^2 and ft^2)

Problem Domain: multiplication, unit conversion, user input

Implict Requirements: - 

Clarifying Questions: -

Mental Model: 
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

Enter the length of the room in meters:
>>10
Enter the width of the room in meters:
>>7
The area of the room is 70.0 square meters (753.47 square feet).

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######


________________________________________________________________________________
###### Algorithm ######


________________________________________________________________________________
=end

###### Code ######

def area()
  puts "Enter the length of the room in meters:"
  length= gets.chomp.to_i
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_i
  area = length*width
  puts "The area of the room is #{area} square meters (#{area*10.7639} square feet)."
end

area()
