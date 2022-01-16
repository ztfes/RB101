words = "the flintstones rock"
separated_words = words.split(" ")

words.split(" ").each {|word| word.capitalize!}.join(" ")


