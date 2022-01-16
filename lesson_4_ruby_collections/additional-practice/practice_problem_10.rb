munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_with_object({}) do |(name,stats), hash|
  if munsters[name]["age"] <= 17
    munsters[name]["age_group"] = "kid"
  elsif munsters[name]["age"] >= 65
    munsters[name]["age_group"] = "senior"
  else
    munsters[name]["age_group"] = "adult"
  end
end

puts munsters
