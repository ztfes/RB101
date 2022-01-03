################################# QUESTION 1 ################################### 
puts("QUESTION 1 \n")

if false
  greeting = "hello world"
end

p greeting

# nothing will happen. greeting is nil since if conditional not executed. 
# baseline main method is truthy. 

################################# QUESTION 2 ################################### 
puts("\nQUESTION 2 \n")

# informal_greeting is referring to same object as greeting
# informal greeting has mutating method << called on it
# Referenced object modified
# Output is { a: 'hi there' }

################################# QUESTION 3 ################################### 
puts("\nQUESTION 3 \n")

# Code Group A outputs...
# "one is: one"
# "two is: two"
# "three is: three"
# local-variables not modified in main method.

# Code Group B outputs...
# "one is: one"
# "two is: two"
# "three is: three"
# local-variables not modified in main method.

# Code Group C outputs...
# "one is: two"
# "two is: three"
# "three is: one"
# Original objects were modified with gsub!, not 'reassigned'. gsub! within 
# mess_with_vars method affects local variables initialized in main method scope


################################# QUESTION 4 ################################### 
puts("\nQUESTION 4 \n")

# My solution from scratch
def is_an_ip_number?(num)
  if (0..255).include?(num)
    return 'true'
  else
    return 'false'
  end
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  ip_component_check = dot_separated_words.map {|comp| is_an_ip_number?(comp.to_i)}
  loop do
    if dot_separated_words.size == 4 && !ip_component_check.include?('false')
      puts("#{input_string} is a valid IP address")
    elsif dot_separated_words.size != 4 
      puts("Input has invalid number of components for IP address")
    elsif ip_component_check.include?('false')
      puts("Input contains invalid IP component (>255)")
    else
    end
    break
  end
end
  

dot_separated_ip_address?('123.123.255.0')
dot_separated_ip_address?('123.456.789.999')
dot_separated_ip_address?('123.456.789')

# Mod provided method

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 && dot_separated_words.size <= 4 do
    word = dot_separated_words.pop
    return false if !is_an_ip_number?(word)
  end
end
