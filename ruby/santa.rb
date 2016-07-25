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

  # def age
  #   @age
  # end

  # def reindeer_ranking
  #   @reindeer_ranking
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #   @gender
  # end

  # def age=(new_age)
  #   @age
  # end

  # def reindeer_ranking=(new_ranking)
  #   @reindeer_ranking
  # end

  # def gender=(new_gender)
  #   @gender
  # end



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

#Create a new instance of santa
santa = Santa.new("male", "white")

#Testing if the new instance of santa works properly
santa.about
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")

#Create another instance of santa and check if it works
santa2 = Santa.new("female", "asian")
santa2.about

#Create 5 new santas with random gender and ethnicity and store them in an array
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
5.times do
  Santa.new(example_genders.sample, example_ethnicities.sample).about
end

#Test if age method works properly.  Also check if celebrate_birthday method adds 1 to age whenever it's called
p santa.age
santa.celebrate_birthday
santa.celebrate_birthday
santa.celebrate_birthday

#Moves a reindeer to the end of the array
santa.get_mad_at('Rudolph')
santa.get_mad_at('Dasher')

#Checking if gender method works properly
p santa.gender
santa.gender = 'agender'
p santa.gender

p santa.age
p santa.ethnicity

#Creating a loop that will display 10 santas with various genders, ethnicities, and ages
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
10.times do
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "Age: #{santa.age = (0..140).to_a.sample}"
  puts "#{santa.about}"
end




