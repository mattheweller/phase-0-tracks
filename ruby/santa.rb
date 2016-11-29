class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :reindeer_ranking, :age

  def initialize(gender, enthnicity)
    @gender = gender
    @enthnicity = enthnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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

# santas = []
# genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end


kris = Santa.new("male", "white")
p kris.reindeer_ranking
p kris.get_mad_at("Rudolph")
p kris.reindeer_ranking
