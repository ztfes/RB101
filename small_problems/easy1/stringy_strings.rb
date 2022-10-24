def stringy(int)
  initial_array = Array.new(int)
  initial_array.each_index do |index|
    if index == 0 || index.even?
      initial_array[index] = 1
    else
      initial_array[index] = 0
    end
  end
  initial_array.join.to_s
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
