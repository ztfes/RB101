def prompt(msg)
    puts "=> #{msg}"
end

prompt("Enter the length of the room in meters:")
length = gets.chomp.to_f

prompt("Enter the width of the room in meters:")
width = gets.chomp.to_f

area_m = (length*width).round(2)
area_ft = (area_m*10.7639).round(2) #convert from m^2 to ft^2

prompt("The area of the room is #{area_m} square meters (#{area_ft} square feet).")