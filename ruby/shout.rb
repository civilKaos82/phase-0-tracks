module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yell_happily(words)
    words + "!!!" + ":D"
  end
end

p Shout.yell_angrily("ARG")
p Shout.yell_happily("YAY")
