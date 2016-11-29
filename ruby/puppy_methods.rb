class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end
   
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def sit
    puts "*sits*"
  end

  def dog_years(human_years)
    puts "#{human_years * 7} dog years"
  end
end

# dog = Puppy.new
# dog.fetch("bone")
# dog.speak(8)
# dog.roll_over
# dog.dog_years(3)
# dog.sit

class Ball

  def throw
   puts "You threw the ball #{rand(20)} feet!"
  end

  def bounce
   puts "The ball bounced #{rand(20)} feet!"
  end

end

# tennis = Ball.new
# tennis.throw
# tennis.bounce


fetch = []
5.times do |i|
  fetch << Ball.new
end

fetch.each do |ball|
  ball.throw
  ball.bounce
end





