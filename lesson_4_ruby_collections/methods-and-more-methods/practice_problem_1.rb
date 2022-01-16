# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# The return value of the method is the original array because the block 
# return is truthy. The method 

# The block returns 'hi'
