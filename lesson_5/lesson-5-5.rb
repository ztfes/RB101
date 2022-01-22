# RB101, Lesson 5-5
# Practice Problems: Sorting, Nested Colelctions & Working with Blocks

################################# QUESTION 1 ################################### 
puts("QUESTION 1 \n")

arr = ['10', '11', '9', '7', '8']

p(arr.map {|item1| item1.to_i}.sort.reverse.map {|item2| item2.to_s})

################################# QUESTION 2 ################################### 
puts("\nQUESTION 2 \n")

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted_books = books.sort do |hsh1, hsh2|
  hsh1[:published].to_i <=> hsh2[:published].to_i
end

p sorted_books

################################# QUESTION 3 ################################### 
puts("\nQUESTION 3 \n")

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].key(0)

################################# QUESTION 4 ################################### 
puts("\nQUESTION 4 \n")

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
p arr2

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
p hsh2

################################# QUESTION 5 ################################### 
puts("\nQUESTION 5 \n")

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# - Loop through each key "NAME"
#  - At each name, if "gender" == "male", add "age" integer to running sum

age_total = 0
munsters.each do |key, value|
  if value["gender"] == "male"
    age_total += value["age"]
  end
end

p age_total
################################# QUESTION 6 ################################### 
puts("\nQUESTION 6 \n")

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  puts "#{key} is a #{value["age"]}-year-old #{value["gender"]}."
end

################################# QUESTION 7 ################################### 
puts("\nQUESTION 7 \n")

# a => 2
# b => [3, 8]
# arr => [4, [3, 8]]

################################# QUESTION 8 ################################### 
puts("\nQUESTION 8 \n")

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], 
       fourth: ['over', 'the', 'lazy', 'dog']}
      
# - Only need to access the values
#   - Values are arrays of 1 - 4 strings
# - loop through each value
#   - loop through each string in array
#   - if string includes vowels     
  
hsh.values.flatten.each do |word|
  word.chars.each do |char| 
    puts char if char =~ /[aeiou]/
  end
end

################################# QUESTION 9 ################################### 
puts("\nQUESTION 9 \n")

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_array = arr.map do |sub_array|
  sub_array.sort.reverse
end

p arr
p sorted_array


################################# QUESTION 10 ##################################
puts("\nQUESTION 10 \n")

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hsh|
  new_hsh = {}
  hsh.each do |key, value|
    new_hsh[key] = value + 1
  end
  new_hsh
end

p arr

################################# QUESTION 11 ##################################
puts("\nQUESTION 11 \n")

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |item| 
  item.reject do |num|
    num % 3 != 0
  end
end

################################# QUESTION 12 ##################################
puts("\nQUESTION 12 \n")

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = arr.each_with_object({}) do |item, hsh|
  hsh[item[0]] = item[1]
end
 
p hash

################################# QUESTION 13 ##################################
puts("\nQUESTION 13 \n")

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# arr_odd = arr.sort_by! {|sub_array| sub_array.select {|num| num.odd?}}

arr_odd = arr.sort_by do |sub_array|
  sub_array.select do |num| 
    num if num.odd?
  end
end

p arr
p arr_odd

################################# QUESTION 14 ##################################
puts("\nQUESTION 14 \n")

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = []
hsh.each_pair do |food, traits|
  if traits[:type] == 'fruit'
    arr << traits[:colors].dup.map {|color| color.capitalize}
  elsif traits[:type] == 'vegetable'
    arr << traits[:size].upcase
  end
end

p arr 

################################# QUESTION 15 ##################################
puts("\nQUESTION 15 \n")

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_array = arr.select do |hsh|
  hsh.all? do |key, value|
    value.all? {|num| num.even?}
  end
end

p even_array

################################# QUESTION 16 ##################################
puts("\nQUESTION 16 \n")

#def uuid_generator
#  require 'securerandom'
#  SecureRandom.uuid
#end

#p uuid_generator

def uuid2
  nums = '0123456789'
  letters = 'abcdefg'
  characters = letters + nums
  uuid1 = characters.chars.sample(8).join
  uuid2 = characters.chars.sample(4).join
  uuid3 = characters.chars.sample(4).join
  uuid4 = characters.chars.sample(4).join
  uuid5 = characters.chars.sample(12).join
  uuid_total = uuid1 + "-" + uuid2 + "-" + uuid3 + "-" + uuid4 + "-" + uuid5
end

p uuid2
