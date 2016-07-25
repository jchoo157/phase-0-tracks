class Santa

  attr_reader :ethnicity
  attr_accessor :age, :reindeer_ranking, :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
  	@gender = gender
  	@ethnicity = ethnicity
  	@age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
  end

  def celebrate_birthday
    @age += 1
    puts "Santa is now #{@age}!"
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
    p @reindeer_ranking
  end

end

santa = Santa.new("male", "white")

santa.speak
santa.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
5.times do
  Santa.new(example_genders.sample, example_ethnicities.sample).about
end

p santa.age
santa.celebrate_birthday
santa.celebrate_birthday
santa.celebrate_birthday
santa.get_mad_at('Rudolph')
santa.get_mad_at('Dasher')

p santa.gender
santa.gender = 'agender'
p santa.gender

p santa.age
p santa.ethnicity




