puts "What is your hamster's name?"
name = gets.chomp

puts "On a scale of 1-10, how loud is your hamster?"
volume = gets.chomp.to_i
	while volume == 0
		puts "Please enter a number from 1-10!"
		volume = gets.chomp.to_i
	end

puts "What is the color of your hamster?"
color = gets.chomp

puts "Is your your hamster suitable for adoption (y/n)?"
suitability = gets.chomp

puts "What is the age of your hamster? Leave blank if unsure."
age = gets.chomp
	if age == ""
		age = nil
	else
		age = age.to_i
	end

puts ""
puts "Here's #{name}'s Information:"
puts ""
puts "(====================================================)"
puts "Name:.................................. #{name}"
puts "Volume Level:.......................... #{volume}"
puts "Color:................................. #{color}"
puts "Suitability for Adoption (y/n):........ #{suitability}" 

if age == nil
  puts "Age:................................... Unknown"
else 
  puts "Age:................................... #{age}"
end
puts "(====================================================)"
