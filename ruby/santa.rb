class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :reindeer_ranking, :age

  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete_if { |name| name == reindeer_name }
    @reindeer_ranking << reindeer_name
  end
end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  santas << Santa.new(genders.sample, ethnicities.sample, rand(140))
  # puts "Santa number #{i + 1} Gender:    #{santas[i].gender}"
  # puts "Santa number #{i + 1} Ethnicity: #{santas[i].ethnicity}"
  # puts "Santa number #{i + 1} Age:       #{santas[i].age}"
end
