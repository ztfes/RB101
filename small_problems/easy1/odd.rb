=begin

Write a method that takes one integer argument, which may be positive, 
negative, or zero. This method returns true if the number's absolute 
value is odd. You may assume that the argument is a valid integer value.

=end

def is_odd?(num)
  if num % 2 != 0
    true
  else
    false
  end
end

# The function "is_odd?" 
