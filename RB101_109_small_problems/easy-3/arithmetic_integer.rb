###### Understand the Problem ######

# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

# Input:  User inputs 2 integers > 0

# Output: Message to user whether 6th integer is included in array of first 5
#         integer inputs

# Problem Domain: Arrays, user input

# Implict Requirements: - integers, not floats or strings

# Clarifying Questions: -

# Mental Model:

###### Examples / Test & Edge Cases ######

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# Edge Case(s): n/a

###### Data Structure ######

###### Algorithm ######

###### Code ######

def prompt(message)
  Kernel.puts("=> #{message}")
end

def addition(num1, num2)
  answer = num1 + num2
  prompt("#{num1} + #{num2} = #{answer}")
end

def subtraction(num1, num2)
  answer = num1 - num2
  prompt("#{num1} - #{num2} = #{answer}")
end

def product(num1, num2)
  answer = num1 * num2
  prompt("#{num1} * #{num2} = #{answer}")
end

def quotient(num1, num2)
  answer = num1 / num2
  prompt("#{num1} / #{num2} = #{answer}")
end

def remainder(num1, num2)
  answer = num1 % num2
  prompt("#{num1} % #{num2} = #{answer}")
end

def power(num1, num2)
  answer = num1**num2
  prompt("#{num1} ** #{num2} = #{answer}")
end

prompt('Enter the first number:')
number1 = Kernel.gets.chomp.to_i

prompt('Enter the second number:')
number2 = Kernel.gets.chomp.to_i

addition(number1, number2)
subtraction(number1, number2)
product(number1, number2)
quotient(number1, number2)
remainder(number1, number2)
power(number1, number2)
