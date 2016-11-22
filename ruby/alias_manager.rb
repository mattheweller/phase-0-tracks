# ## Pseudocode ##
# Abstract the algorithm into the following helper methods:

# 1. Reverse the first and last name that's entered.
# 2. When encountering a vowel, update the vowel with the next vowel, in alphabetical order, looping u around to a.
# 3. Do basically the same thing for consonants.
# 4. Create a parent method that uses the name reverse method, then iterate thru each letter and determine if it's a vowel or not, updating along the way.
# 5. Capitalize each part of the name and store it in a result array, and join it on the return.
# 6. Initialize variables for the user flow.
# 7. Loop through the IO, print the output, and store the input and output in an array nested hash.
# 8. Loop through the hash to print the input and output.

Vowels = %w(a e i o u)

def name_swap(name)
  reverse_name = name.downcase.split(" ").reverse
end

def next_vowel(vowel)
  if Vowels.include?(vowel) && vowel != "u"
    return Vowels[Vowels.index(vowel) + 1]
  else
    return "a"
  end
end

def next_consonant(letter)
  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
  if consonants.include?(letter) && letter != "z"
    return consonants[consonants.index(letter) + 1]
  else
    return "b"
  end
end

def alias_manager(name)
  array = []
  name_swap(name).each do |word|
    result = ""
    word.split("").each do |letter|
      if Vowels.include?(letter)
        result += next_vowel(letter)
      else
        result += next_consonant(letter)
      end
    end
    array << result.capitalize
  end
  array.join(" ")
end

spy_names = []
response = ""
until response == "quit" || response == "n"
  puts "Would you like to translate a name? (y / n) or enter 'quit' to exit."
  response = gets.chomp
  if response == "y"
    puts "What name would you like to translate?"
    input = gets.chomp
    puts "Here is your translation: " + alias_manager(input)
    spy_names << ({input => alias_manager(input)})
  elsif response != "y" && response != "n" && response != "quit"
    puts "Please make a valid entry."
  else 
    puts "Goodbye."
    break
  end
  puts ""
end

spy_names.each_with_index do |ele, idx|
  spy_names[idx].each do |name, spy|
    print "#{spy} is also known as #{name}.\n"
  end
end