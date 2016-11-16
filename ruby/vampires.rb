Vampire_Names = "dra drac ula cula fang nosf eratu"
Allergies = %w(peanuts sunshine wheat beestings)
Employee_Roster = []


def vamp_namer(name)
	vamp_array = Vampire_Names.split(" ")
	vamp_array.each { |vamp_ele| return true if name.downcase.include?(vamp_ele) }
	false
end

puts "How many employees to process?"
num = gets.chomp.to_i

num.times do
	employee_allergies = Hash.new(0)

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y / n)"
	garlic_order = gets.chomp

	puts "Would you like to enroll in the company’s health insurance? (y / n)"
	insurance = gets.chomp

	Allergies.each do |allergy|
		puts "Are you allergic to #{allergy}? (y / n)"
		response = gets.chomp
		employee_allergies[allergy] = response
	end

	case
	when age < 116 && birth_year > 1900 && !vamp_namer(name)
		puts "Probably not a vampire... Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	when (age > 116 || birth_year < 1900) && (garlic_order == "n" || insurance == "n")
		puts "Probably a vampire... Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	when employee_allergies["sunshine"] == "y"
		puts "Probably a vampire... Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	when age > 116 && birth_year < 1900 && garlic_order == "n" && insurance == "n"
		puts "Almost certainly a vampire... Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	when age < 116 && birth_year > 1900 && garlic_order == "y" && insurance == "y" && vamp_namer(name)
		puts "Definitely a vampire... Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	else
		puts "Results inconclusive... done Done DOONNEE!"
	end

	Employee_Roster.push({"name" => name}, {"age" => age}, {"birth year" => birth_year}, {"Garlic Bread" => garlic_order}, {"Health Insurance" => insurance}, {"Allergies" => employee_allergies})
end
