## pseudocode ##

# Get input from client / stored as:

# - Name / string
# - phone number / string of numbers
# - email / string
# - subscribe? / boolean
# - age / integer
# - number of children / integer
# - decor theme / 
# - favorite 90s band / string

# Requirements: 

# 1. Keys should be symbols unless a string is needed for "user friendly" formatting

# 2. Prompt the designer/user to enter all of this imput needed.

# 3. Convert any user input to the appropriate data type.

# 4. Output the hash after the designer has answered all of the questions.

# 5. Ask designer to verify the info and give the opportunity to update a value by entering the key that they want to edit.

# 6. Convert the string input into a symbol to accurately check the existing hash to access the correct key, so the value can be reassigned.

# 7. If the edit option response is "none", continue.

# 8. If the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key.

# 9. Assume that the user will correctly input a key that exists in your hash -- no need to handle user errors.

# 10. Print the latest version of the hash, and offer to enter another client or exit the program.

hash = {
  Name: "",
  Phone: "",
  Email: "",
  Subscribed: nil,
  Age: 0,
  "Number of Children" => 0,
  "Decor Theme" => "",
  "Favorite Band" => ""
}

another, client_directory = "", []

def p_hash(hash)
  puts "Thank you for your entry. You entered:"
  puts "(====================================)"
  hash.each do |key, value|
    puts "#{key}: #{value}"
  end
  puts "(====================================)"
end

until another == "n"
  puts "Please enter the following information:"
  puts "Please enter your name:"
  hash[:Name] = gets.chomp
  
  puts "Please enter your phone:"
  hash[:Phone] = gets.chomp
  
  puts "Please enter your email:"
  hash[:Email] = gets.chomp
  
  puts "Would you like to subcribe to our newsletter? (y / n)"
  if gets.chomp == "y"
    hash[:Subscribed] = true
  else
    hash[:Subscribed] = false
  end
   
  puts "Please enter your age:"
  hash[:Age] = gets.chomp.to_i
  
  puts "Please enter the number of children you have:"
  hash["Number of Children"] = gets.chomp.to_i
  
  puts "Please enter a decor theme:"
  hash["Decor Theme"] = gets.chomp
  
  puts "Please enter the name of your favorite 90's band:"
  hash["Favorite Band"] = gets.chomp
  
  p_hash(hash)
  puts ""
  
  puts "Please confirm that this information is correct. If you need to edit a field, please enter the name of that field. Otherwise, simply enter 'none':"
  input = gets.chomp
  
  if input == "none"
    p_hash(hash)
  else
  
    puts "Ok. You'd like to change the #{input} field, correct? (y /n)"
    response = gets.chomp
    if response == "y"
      puts "Please enter your update to the #{input} field"
      edit = gets.chomp
      if hash.has_key?(input.to_sym) && hash[input.to_sym].class == Fixnum
        hash[input.to_sym] = edit.to_i
      elsif hash.has_key?(input.to_sym)
        hash[input.to_sym] = edit
      elsif hash.has_key?(input) && hash[input].class == Fixnum
        hash[input] = edit.to_i
      elsif hash.has_key?(input)
        hash[input] = edit
      end
      
    p_hash(hash)
    
    elsif response == "n"
      p_hash(hash)
    end
  end
  
  client_directory << hash
  puts "Would you like to enter another client? (y / n)"
  another = gets.chomp
end