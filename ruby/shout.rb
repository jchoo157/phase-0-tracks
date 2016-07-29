# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily("Darnit why did I do that")
# p Shout.yelling_happily("I am so lucky")


# The shout module will be included into other classes so that they have access to the methods
module Shout
  def yell_angrily(words)
    puts words + "!!!" + " >:("
  end

  def yell_happily(words)
    puts words + "!!!" + " ^_^"
  end
end

class Adult
  include Shout

  def initialize
    puts "---Adult---"
  end
end

class Teenager
  include Shout
  
  def initialize
    puts "---Teenager---"
  end
end

# Created instances of classes and called methods on them that come from the Shout module.
adult = Adult.new
adult.yell_angrily("Why didn't I file my taxes")
adult.yell_happily("I got a raise")

teenager = Teenager.new
teenager.yell_angrily("Get out of my room")
teenager.yell_happily("I can finally drive")


