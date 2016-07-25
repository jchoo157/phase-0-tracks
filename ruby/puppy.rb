# SPECIES ----
# Golden Retriever

# CHARACTERISTICS ----
# Color: Golden
# Name: Cinnabun
# Friendly: Yes
# Trained: Yes
# Age: 10

# BEHAVIOR ----
# Run
# Jump
# Bark

class Puppy
  
  def initialize(name)
    @name = name
  end

  def bark
    puts "#{@name}: Bark Bark!"
  end

  def jump 
    puts "#{@name} is jumping around!"
  end

  def run
    puts "#{@name} is running everywhere!"
  end

end

cinnabon = Puppy.new("Cinnabon")

cinnabon.bark
cinnabon.run
cinnabon.jump
