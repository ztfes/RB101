def prompt(msg)
    puts "=> #{msg}"
end

prompt("What is your age?")
current_age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retired_age = gets.chomp.to_i

current_year= Time.new.year

years_to_retire = retired_age - current_age

retired_year = current_year + years_to_retire

puts "It's #{current_year}. You will retire in #{retired_year}"
puts "You have only #{years_to_retire} years of work to go!"