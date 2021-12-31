=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a program that solicits 6 numbers from the user, then prints a 
message that describes whether or not the 6th number appears amongst 
the first 5 numbers.

Input: User inputs 6 integers

Output: Message to user whether 6th integer is included in array of first 5
        integer inputs

Problem Domain: Arrays, user input

Implict Requirements: - integers, not floats or strings

Clarifying Questions: - 

Mental Model: get input, add to array, verify 6th input is included in array
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

Edge Case(s): n/a
________________________________________________________________________________
###### Data Structure ######

Arrays
________________________________________________________________________________
###### Algorithm ######

1) Prompt user 6 times for integer inputs
1a) Verify valid integer input, if not -> ask user to re-enter
2) append first 5 integer inputs to array
3) Verify if 6th input is included in array
3a) Print message stating whether or not 6th integer is included
________________________________________________________________________________
=end

###### Code ######

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

user_generated_array = []

loop do

  loop do
    prompt("Enter the 1st number:")
    number1 = Kernel.gets().chomp().to_i()

    if valid_number?(number1)
      user_generated_array << number1
      break
    else
      prompt("That's not a valid number")
    end
  end
  
  loop do
    prompt("Enter the 2nd number:")
    number2 = Kernel.gets().chomp().to_i()

    if valid_number?(number2)
      user_generated_array << number2
      break
    else
      prompt("That's not a valid number")
    end
  end
  
  loop do
    prompt("Enter the 3rd number:")
    number3 = Kernel.gets().chomp().to_i()

    if valid_number?(number3)
      user_generated_array << number3
      break
    else
      prompt("That's not a valid number")
    end
  end
  
  loop do
    prompt("Enter the 4th number:")
    number4 = Kernel.gets().chomp().to_i()

    if valid_number?(number4)
      user_generated_array << number4
      break
    else
      prompt("That's not a valid number")
    end
  end
  
  loop do
    prompt("Enter the 5th number:")
    number5 = Kernel.gets().chomp().to_i()

    if valid_number?(number5)
    user_generated_array << number5
    break
    else
    prompt("That's not a valid number")
    end
  end

  prompt("Enter the last number:")
  number6 = Kernel.gets().chomp().to_i()

  if valid_number?(number6) && user_generated_array.include?(number6)
    prompt("The number #{number6} appears in #{user_generated_array}.")
  elsif valid_number?(number6) && !(user_generated_array.include?(number6))
    prompt("The number #{number6} does not appear in #{user_generated_array}.")
  else
    prompt("That's not a valid number")
  end
  
  prompt("Would you like to try again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt("Thanks for using this program")


=begin

A WAY BETTER ANSWER from "Katherine"

ORDINALS = %w[1st 2nd 3rd 4th 5th last]

numbers = ORDINALS.each_with_object([]) do |ord, nums|
  puts "==> Enter the #{ord} number:"
  nums << gets.chomp.to_i
end

last = numbers.pop
appears = numbers.count(last) > 0 ? 'appears' : 'does not appear'

puts "The number #{last} #{appears} in #{numbers}."

=end
