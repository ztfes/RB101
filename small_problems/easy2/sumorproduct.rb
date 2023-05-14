def prompt(msg)
    puts "=> #{msg}"
end

prompt("Please enter an integer greater than 0:")
integer = gets.chomp.to_i   

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp.to_s.downcase

if choice == 's'
    puts "The sum of the integers between 1 and #{integer} is #{(1..integer).sum}"
elsif choice == 'p'
    puts "The product of the integers between 1 and #{integer} is #{(1..integer).inject(:*)}"
end
