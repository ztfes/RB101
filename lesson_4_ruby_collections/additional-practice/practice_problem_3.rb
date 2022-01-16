ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

above_100, below_100 = ages.partition do |key, value|
  value >= 100
end

p above_100
