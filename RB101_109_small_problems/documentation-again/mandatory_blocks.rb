a = [1, 4, 8, 11, 15, 19]

=begin

The array#bsearch method defines a 'find-min' and 'find-any' mode.

Using a.bsearch {|x| x > 8} you would find and return the first value
that exceeds integer value 8.

the expected output would be '11'

=end

puts a.bsearch {|x| x > 8}
