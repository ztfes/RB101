def prompt(msg)
    puts "=> #{msg}"
end

prompt("This program will ask you to input 2 positive integers")

prompt("Enter the 1st positive integer:")
first_num = gets.chomp.to_i

prompt("Enter the 2nd positive integer:")
second_num = gets.chomp.to_i

#if first_num < 0 || first_num.is_a? !Integer
#    prompt("Please ")

addition = first_num + second_num
subtraction = first_num - second_num
multiply = first_num + second_num
divide = first_num / second_num
divmod = first_num % second_num
exponent = first_num ** second_num

prompt("#{first_num} + #{second_num} = #{addition}") 
prompt("#{first_num} - #{second_num} = #{subtraction}") 
prompt("#{first_num} * #{second_num} = #{multiply}") 
prompt("#{first_num} / #{second_num} = #{divide}") 
prompt("#{first_num} % #{second_num} = #{divmod}") 
prompt("#{first_num} ** #{second_num} = #{exponent}") 