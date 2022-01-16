# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Loops through each item, adds to count if block returns truthy value

# expected output => 2
