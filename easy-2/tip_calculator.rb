=begin
________________________________________________________________________________
###### Understand the Problem ######

- Create a simple tip calculator. The program should prompt for a bill 
  amount and a tip rate. The program must compute the tip and then display 
  both the tip and the total amount of the bill.

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

def tipcalculator()
  puts "What is the bill?"
  bill = gets.chomp.to_i
  puts "What is the tip percentage?"
  tip_percent = gets.chomp.to_f
  tip_amount = (tip_percent/100)*bill
  total = bill + tip_amount
  
  puts "The tip is $#{tip_amount}"
  puts "The total is $#{total}"
end

tipcalculator()
