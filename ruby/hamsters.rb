puts "What is your hamster's name?"

name = gets.chomp!

puts "On a scale of 1-10, how loud is your hamster?"

volume =  gets.chomp!.to_i

puts "What is the color of your hamster?"
color = gets.chomp!


puts "Is your your hamster suitable for adoption (y/n)?"

suitability = gets.chomp!

puts "What is the estimated age in years of your hamster?"

age = gets.chomp!
if age == ""
  age = nil
else 
  age.to_i
end
puts " #{name}'s Information"
puts "Name: #{name}"
puts "Volume Level: #{volume}"
puts "Color: #{color}"
puts " Suitability for Adoption (Y/N) #{suitability}" 

if age == nil
  puts "Age: Unknown"
else 
  puts "Age: #{age}"
end