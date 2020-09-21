require "pry"

mixed_data = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]

def join_nested_strings(mixed_data)
  index = 0
  new_sentence = []
  while index < mixed_data.count do
    new_sentence << mixed_data[index].is_a?(String)
  end
  new_sentence
end
join_nested_strings(mixed_data)





  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it