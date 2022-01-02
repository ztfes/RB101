################################# QUESTION 1 ################################### 

# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.
puts("QUESTION 1 \n")
p ages.any?('Spot')
p ages.include?('Spot')
p ages.key?('Spot')

################################# QUESTION 2 ################################### 

#Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

#Convert the string in the following ways (code will be executed on original munsters_description above):
puts("\nQUESTION 2 \n")
# p munsters_description.upcase!.gsub!("THE MUNSTERS", "tHE mUNSTERS") == 
#   "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.swapcase! == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.capitalize! == "The munsters are creepy in a good way."
p munsters_description.downcase! == "the munsters are creepy in a good way."
p munsters_description.upcase! == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

################################# QUESTION 3 ################################### 
puts("\nQUESTION 3 \n")

#We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

#add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)

################################# QUESTION 4 ################################### 
puts("\nQUESTION 4 \n")
# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?('dino')

################################# QUESTION 5 ################################### 
puts("\nQUESTION 5 \n")
# Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

p flinstones = %w(Fred Barney Wilma Betty Bambam Pebbles)
  
################################# QUESTION 6 ################################### 
puts("\nQUESTION 6 \n")
# How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flinstones << 'Dino'

################################# QUESTION 7 ################################### 
puts("\nQUESTION 7 \n")
# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)
p flintstones.push('Dino', 'Hoppy')


################################# QUESTION 8 ################################### 
puts("\nQUESTION 8 \n")

# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make 
# the return value "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".

p advice.slice!("house training your pet dinosaur.")
p advice 
# As a bonus, what happens if you use the String#slice method instead?
p advice.slice("house training your pet dinosaur.") # does not assign to new array
p advice 

################################# QUESTION 9 ################################### 
puts("\nQUESTION 9 \n")

# Write a one-liner to count the number of lower-case 
# 't' characters in the following string:

statement = "The Flintstones Rock!"
p statement.count('t')

################################# QUESTION 10 ################################## 
puts("\nQUESTION 10 \n")

# Back in the stone age (before CSS) we used spaces to align 
# things on the screen. If we had a table of Flintstone family members 
# that was forty characters in width, how could we easily center that title 
# above the table with spaces?

title = "Flintstone Family Members"
p title.center(40)

