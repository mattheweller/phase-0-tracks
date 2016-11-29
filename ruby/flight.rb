module Flight
  def take_off(altitude)
    puts "#{self.name} takes off and ascends until reached #{altitude}..."
  end
end

class Bird
  include Flight
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Plane
  include Flight
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

bird = Bird.new("Tweety")
bird.take_off(800)

plane = Plane.new("747")
plane.take_off(30000)
