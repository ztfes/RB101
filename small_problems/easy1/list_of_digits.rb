def digit_list(num)
  num.to_s.split(//).map {|x| x.to_i}
  # could have used .chars instead of .split(//)
end

# Define method. 
# Pass an integer argument
# Convert integer into 1x1 array
# Split value at 0th index
# Return array that is length of number of digits in integer argument. 
# One digit per index

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
