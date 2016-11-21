def block_taker
  puts "Below this line is the block"
  yield("the block", "the block two")
  puts "This line is after the block"
end

block_taker { |a, b| puts "This is #{a}, and this is #{b}"}


def block_taker2
  puts "Below this line is the block"
  yield
  puts "This line is after the block"
end

block_taker2 { puts "This is the block"}

# release 1

cities = ["San Francisco", "Chicago", "New York", "Omaha"]

state_capitols = {
  "California" => "Sacramento",
  "Illinois" => "Springfield",
  "Michigan" => "Lansing",
}

puts "This is cities before: #{cities}"
puts "This is state_capitols before: #{state_capitols}"

#.each Array

cities.each do |city|
  puts city.reverse.capitalize
end

#.each Hash

state_capitols.each do |state, capitol|
  puts "The capitol of #{state} is #{capitol}"
end

#.map! Array

cities.map! do |city|
  city.reverse.upcase
end

puts "This is cities after: #{cities}"
puts "This is state_capitols after: #{state_capitols}"

# release 2

letters = ["a", "b", "c", "d", "e"]
numbers = {
  1 => "one",
  2 => "two",
  3 => "three"
}

# A method that iterates through the items, deleting any that meet a 
# certain condition (for example, deleting any numbers that are less than 5).

# Array: arr.delete_if {condition}

p letters

letters.delete_if do |letter|
  letter =~ /[aeiou]/
end
p letters

# Hash: hash.delete_if {condition}

p numbers

numbers.delete_if do |number, word|
  number.odd? && word.length < 4
end

p numbers

# A method that filters a data structure for only items that do satisfy a 
# certain condition (for example, keeping any numbers that are less than 5).

# Array: arr.select {condition}

p letters

new_letters_array = letters.select do |letter|
  letter =~ /[aeiou]/
end
p letters
p new_letters_array

# Hash: hash.select {condition}

p numbers

numbers.select! do |number, word|
  number.odd? && word.length < 4
end

p numbers

# A different method that filters a data structure for only items satisfying
# a certain condition -- Ruby offers several options!

# Array: arr.keep_if {condition}

p letters

letters.keep_if do |letter|
  letter =~ /[aeiou]/
end
p letters

# Hash: hash.keep_if {condition}

p numbers

numbers.keep_if do |number, word|
  number.odd? && word.length < 4
end

p numbers

# A method that will remove items from a data structure until the condition 
# in the block evaluates to false, then stops (you may not find a perfectly 
# working option for the hash, and that's okay).

# Array: arr.drop_while {condition}

p letters

new_arr = letters.drop_while do |letter|
  letter.ord < 100
end
p letters
p new_arr
