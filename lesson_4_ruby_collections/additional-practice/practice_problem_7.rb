statement = "The Flintstones Rock"

statement_array = statement.downcase.chars

statement_array.each_with_object({}) do |element, hash|
  hash[element] = statement_array.count(element)
end
