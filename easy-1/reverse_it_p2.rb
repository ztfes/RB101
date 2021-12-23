=begin
________________________________________________________________________________
###### Understand the Problem ######

Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters 
reversed. Each string will consist of only letters and spaces. Spaces should 
be included only when more than one word is present.

Input: String containing one or more words

Output: String printed but with words of >= 5 characters printed in reverse.

Problem Domain: Parsing and manipulating strings

Implict Requirements: -

Clarifying Questions: -

Mental Model: Receive a string, separate by spaces if necessary (into an array),
              identify items with >= 5 chars, reverse those items in place. 
              Splice/stitch array back together into line of text
________________________________________________________________________________
###### Examples / Test & Edge Cases ######

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

Edge Case(s):
________________________________________________________________________________
###### Data Structure ######

Strings
________________________________________________________________________________
###### Algorithm ######

Receive input string
splice string into array (separate by spaces)
loop through array
reverse item if length.item >= 5 characters (letters)
Stitch array elements back together
print as string
________________________________________________________________________________
=end

###### Code ######

def reverse_words(string)
    string.split(' ').each {|x| x.reverse! if x.length >= 5}.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


