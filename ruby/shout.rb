module Shout
  def self.yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :D"
  end

end

Shout.yell_angrily("I'm so mad right now")
Shout.yell_happily("I'm so happy right now")
