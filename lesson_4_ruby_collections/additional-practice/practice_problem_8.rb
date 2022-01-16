numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Expected Output

# => 1 / numbesr = [1,3,4]
# => 3 / number = [1,4]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Expected Output

# => 1 / numbesr = [1,2,3]
# => 2 / number = [1,2]
