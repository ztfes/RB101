# Method Definition

def reverse_words(string)
  string.split.each {|x| x.reverse! if x.length >= 5}.join(' ')
end

# Test Cases

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
