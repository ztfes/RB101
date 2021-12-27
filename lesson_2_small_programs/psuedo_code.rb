=begin

For example, write out pseudo-code (both casual and formal) that does the following:

1) a method that returns the sum of two integers

2) a method that takes an array of strings, and returns a       string that is all those strings concatenated together

3) a method that takes an array of integers, and returns a new  array with every other element
    
####### Problem 1 #######

START

# Given a pair of integers
# Print the sum

GET num1
GET num2

PRINT num1 + num2

####### Problem 2 #######

START

# given an array of strings
# return a concatenated string of all separate strings

GET array of strings
SET single string = []

SET iterator = 1

WHILE iterator <= length of array of strings
  Append item from array of strings to single string
  iterator += 1
END

####### Problem 3 #######

START

# given an array of integers
# return a new array with every other element of given array

GET first_array

FOR i in 1 to length of first_array
  if i is odd
    append element to new_array
  else
  end
END



=end
