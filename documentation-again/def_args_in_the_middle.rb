def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Original response:
# Will output #error. 'd' undefiined in my_method. Incorrect # of args

# Corrected response:
# my_method allocates 4 to 'a', 5 to 'b', c is given the default value, 
# 6 is allocated to 'd'.
