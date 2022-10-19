# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

def repeat(str, num = 1)
  num.times {puts str.to_s}
end

repeat('Hello', 3)


