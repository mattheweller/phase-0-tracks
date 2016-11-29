# module Shout
#   def self.yell_angrily(words)
#     words.upcase + "!!!" + " :("
#   end
#
#   def self.yell_happily(words)
#     words + "!!!" + " :D"
#   end
#
# end
#
# Shout.yell_angrily("I'm so mad right now")
# Shout.yell_happily("I'm so happy right now")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words.upcase + "!!!" + " :D"
  end
end

class Isley_Brothers
  include Shout
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Kiss
  include Shout
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

ron = Isley_Brothers.new("Ronald Isley")
puts ron.yell_happily("a little bit louder now")

gene = Kiss.new("Gene Simmons")
puts gene.yell_happily("shout it. shout it out loud")
