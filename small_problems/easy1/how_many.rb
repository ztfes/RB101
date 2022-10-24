def count_occurrences(list)
  list.uniq.each {|x| puts "#{x} => #{list.count(x)}"}
end

# loop over array, identify unique array items
# count # of occurences of unique item
# print title / # of occurences to screen

# array.uniq & array.count, loop over uniq items, count occurence of uniq item
# inside original array

#test

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
