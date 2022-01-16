# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# return value of "reject" is original array
# "puts" return value is nil
# "reject" returns new array of items when block is falsey
