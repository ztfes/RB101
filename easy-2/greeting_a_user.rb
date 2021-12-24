=begin
________________________________________________________________________________
###### Understand the Problem ######

- Write a program that will ask for user's name. The program will then greet 
  the user. If the user writes "name!" then the computer yells back to the user.

Input: user input of name

Output:  Hello "user name"

Problem Domain: user input, ternary?

Implict Requirements: - 

Clarifying Questions: -

Mental Model: 
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

What is your name? Bob
>>Hello Bob.

What is your name? Bob!
>>HELLO BOB. WHY ARE WE SCREAMING?

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######


________________________________________________________________________________
###### Algorithm ######


________________________________________________________________________________
=end

###### Code ######

def greeting()
  puts "What is your name?"
  name = gets.chomp.to_s
  if name.include?('!')
    puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}"
  end
end

greeting()
  
