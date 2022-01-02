################################# QUESTION 1 ################################### 
puts("QUESTION 1 \n")

counter = 1
10.times do
  space = " "*counter
  puts space + "The Flintsones Rock!"
  counter += 1
end

################################# QUESTION 2 ################################### 
puts("\nQUESTION 2 \n")

# puts "the value of 40 + 2 is " + (40 + 2)

# This outputs an error because you cannot append a string w/ an integer.

# You can fix this by....

# 1) puts "the value of 40 + 2 is " + "#{40+2}"
# 2) puts "the value of 40 + 2 is " + (40+2).to_s

################################# QUESTION 3 ################################### 
puts("\nQUESTION 3 \n")

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(0)
p factors(10)

# the purpose of number % divisor == 0 is to show whole number factors

# the purpose of 2nd to last line in factors method is to return the final 
# value of the factors array after executing the loop

################################# QUESTION 4 ################################### 
puts("\nQUESTION 4 \n")

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Method one uses the mutating "<<" array method
# Method two uses the non-mutating "+" method to append the new item to the array

################################# QUESTION 5 ################################### 
puts("\nQUESTION 5 \n")


# The "limit" variable is defined outside the method. The method does not have 
# access to the "limit" variable because it is not at the same level of scope.

# Two possible options

# 1) Pass the limit variable as an argument to the method
# 2) define the limit variable manually within the method scope
################################# QUESTION 6 ################################### 
puts("\nQUESTION 6 \n")

# The code outputs 34
# The operation within the method does not mutate the local variable defined
# in the outer scope.

################################# QUESTION 7 ################################### 
puts("\nQUESTION 7 \n")

# The data does get re-assigned / mutated. The methods called on the hash were
# are desctructive to the original hash.

################################# QUESTION 8 ################################### 
puts("\nQUESTION 8 \n")

# Returns the winning hand "paper"

################################# QUESTION 9 ################################### 
puts("\nQUESTION 9 \n")

# returns "no"
# foo is passed as an argument for bar. Foo called with no argument has the default
# arg of "no", and returns "yes".

# Effectively, we are passing "yes" to bar(). Evaluating the ternary operation
# with param != "no" returns "no"


