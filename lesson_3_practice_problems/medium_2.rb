################################# QUESTION 1 ################################### 
puts("QUESTION 1 \n")

# Object IDs will change with variable assigned new values.

################################# QUESTION 2 ################################### 
puts("\nQUESTION 2 \n")

# Object IDs will change with variable assigned new values.
# IDs will not change based on method location
# Array element (even if integer) object ID != integer of same value

################################# QUESTION 3 ################################### 
puts("\nQUESTION 3 \n")

# my_string will not be modified
# my_array will include the string appended in the method

# string was not changed because it defined new variable scope in the method
# that was not later available to print-to-screen

#      a_string_param += "rutabaga" is equal to...
#      a_string_param = a_string_param + "rutabaga"

# the << array method mutates the array object

################################# QUESTION 4 ################################### 
puts("\nQUESTION 4 \n")

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Now my_string has been modified. My_array has not changed

################################# QUESTION 5 ################################### 
puts("\nQUESTION 5 \n")

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

################################# QUESTION 6 ################################### 
puts("\nQUESTION 6 \n")

def color_valid(color)
  color == "blue" || color == "green" ? true : false
end
