##### QUESTION 1 ##### 
=begin 

# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # <----- Outputs [1,2,2,3]

.uniq did not mutate original array, "puts" outputs array items on new line

=end
##### QUESTION 2 ##### 
=begin

Describe the difference between ! and ? in Ruby. And explain what would 
happen in the following scenarios:

1)  what is != and where should you use it?

    != is the operand for "NOT equal". Used when you want to evaluate two values 
    that are not equal to each other in order to execute a conditional

2)  put ! before something, like !user_name

    Used when you want to evaluate something when user_name is 'false'

3)  put ! after something, like words.uniq!

    make a method destructive / mutate the object

4)  put ? before something

    Use a ? before 'true' or 'false' outputs in ternary operation

5)  put ? after something

    use a ? after the condition of a ternary operaetor

6)  put !! before something, like !!user_name
    
    convert objet to boolean     

=end
##### QUESTION 3 ##### 

# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
          
puts advice.gsub!("important", "urgent")

##### QUESTION 4 #####

numbers = [1, 2, 3, 4, 5]

puts numbers.delete_at(1) # deletes 2
puts numbers.delete(1)    # deletes 1

##### QUESTION 5 #####

puts (10..100).include?(42)
  
##### QUESTION 6 #####

famous_words = "seven years ago..."

puts famous_words.prepend('Four score and ')  # method 1
puts 'Four score and ' + famous_words

##### QUESTION 7 #####

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!

##### QUESTION 8 #####

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, 
                "BamBam" => 4, "Pebbles" => 5 }
                
p flintstones.to_a[2].flatten!
p flintstones.assoc("Barney")


