class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(human_years)
    puts human_years * 7
  end

  def play_dead
    puts "there's no noise.."
  end

end

class Cat

  def initialize
    puts "meow?"
  end

  def play(cat_toy)
    puts "Playing the #{cat_toy}. Do you have food?"
  end

  def mirror(picture)
    puts picture + "||" + picture.reverse
  end

end

cat_storage = []

50.times do
  cat_storage << Cat.new
end

cat_storage.each { |x|
  x.play("ball of yarn")
  x.mirror("kitty kitty kitty")
}

puppy = Puppy.new
puppy.fetch("ball")

puppy.speak(3)
puppy.roll_over
puppy.dog_years(14)
puppy.play_dead