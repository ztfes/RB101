require 'date'

puts Date.civil               # output nil due to no input
puts Date.civil(2016)         # output 2016-01-01 due to no month/day input
puts Date.civil(2016, 5)      # output 2016-5-01 due to no day input
puts Date.civil(2016, 5, 13)  # output 201-05-13
