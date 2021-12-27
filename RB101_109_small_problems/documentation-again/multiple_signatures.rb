a = %w(a b c d e) # creates array of strings 'a', 'b', etc.
puts a.fetch(7)   # error - only 5 items in array, '7' is
puts a.fetch(7, 'beats me') # prints 'beats me'
puts a.fetch(7) { |index| index**2 } # prints '49'

=begin

##### Interesting note on array#fetch: ######

To raise an error for indices outside of the array bounds or else to 
provide a default value when that happens, you can use fetch.


The documentation for Array#fetch has the signature:

    fetch(index) → obj
    fetch(index, default) → obj
    fetch(index) { |index| block } → obj
    
=end
