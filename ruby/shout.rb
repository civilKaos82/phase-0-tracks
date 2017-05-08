module Shout
  # we'll put some methods here soon, but this code is fine for now!
  #I removed the self. before the yell_angrily below.
  def yell_angrily(words)
    words + "!!!" + ":("
  end
  #Here I also removed the self. before the method name.
  def yell_happily(words)
    words + "!!!" + ":D"
  end
end

#old code tests to see if shout would print the appropriate string for Release 1
#p Shout.yell_angrily("ARG")
#p Shout.yell_happily("YAY")
class Angry_guy
  include Shout
end

class Happy_guy
  include Shout
end

angry_guy = Angry_guy.new
p angry_guy.yell_angrily("ARG")
p angry_guy.yell_happily("Yay")
happy_guy = Happy_guy.new
p happy_guy.yell_angrily("ARG")
p happy_guy.yell_happily("Yay")
