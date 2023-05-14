def prompt(msg)
    puts "=> #{msg}"
end

prompt("This program will ask you to input 6 integers")

prompt("Enter the 1st number:")
first_num = gets.chomp.to_i

prompt("Enter the 2nd number:")
second_num = gets.chomp.to_i

prompt("Enter the 3rd number:")
third_num = gets.chomp.to_i

prompt("Enter the 4th number:")
fourth_num = gets.chomp.to_i

prompt("Enter the 5th number:")
fifth_num = gets.chomp.to_i

prompt("Enter the last number:")
last_num = gets.chomp.to_i

arr = [first_num, second_num, third_num, fourth_num, fifth_num]

if arr.include?(last_num)
    puts "The number #{last_num} appears in #{arr}"
else
    puts "The number #{last_num} does not appear in #{arr}"
end
