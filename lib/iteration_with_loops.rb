require "pry"

mixed_data = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]

def join_nested_strings(mixed_data)
  current_level = 0
  new_sentence = [] # new empty array
  while current_level < mixed_data.count do # will run 3 times because there are 3 top level elements
    # make a new counter for this level
    p "first level works"
    element_counter = 0
    # loop through all the elements in the array at the current level
    while element_counter < mixed_data[current_level].count do
      p "second level works"
      # want check if the current element is a string
      if mixed_data[current_level][element_counter].is_a?(String)
        # the current element is a string add it to the new sentence
        new_sentence << mixed_data[current_level][element_counter]
      end
      element_counter += 1
    end
    current_level += 1 # increment our counter by one so we know which row we are looking at
  end
  p new_sentence.join(" ")
end
join_nested_strings(mixed_data)





  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it