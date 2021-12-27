=begin
________________________________________________________________________________
###### Understand the Problem ######

Input:  

Output:   

Problem Domain:  

Implict Requirements: - 

Clarifying Questions: -

Mental Model: 
________________________________________________________________________________
###### Examples / Test & Edge Cases ######
 

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######


________________________________________________________________________________
###### Algorithm ######


________________________________________________________________________________
=end

###### Code ######

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Expected Output

# Array2 is appended with values of array1 in line 36
# Array2 items are modified to UPCASE any item that starts with C or S
# Array2 output is an array of strings from array1 with Curly/Shemp/Chico UPCASE
