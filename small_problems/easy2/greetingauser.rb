def prompt(msg)
    puts "=> #{msg}"
end

prompt("What is your name?")
name = gets.chomp.to_s

if name.include?("!")
    puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
    puts "Hello #{name}."
end

