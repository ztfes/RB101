def sum(integer)
  integer.to_s.split('').map {|item| item.to_i}.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
