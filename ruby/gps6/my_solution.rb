# Virus Predictor

# I worked on this challenge [Johnny Choo, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# You don't have to specify the full path.  Just the file.
#
require_relative 'state_data'

class VirusPredictor

  # Defines how each new INSTANCE of the VirusPredictor CLASS is created with what ATTRIBUTES it has as well
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Prints out the predicted deaths and speed of spread for given state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Takes 3 PARAMETERS and predicts the deaths according to population density and overall population.  Prints out a statement at the end.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Predicts the speed of spread according to population density of a state and takes 2 PARAMETERS.  Prints out a statement at the end.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density 
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, value|
  VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects
end


#=======================================================================
# Reflection Section

# The "=>" syntax is used when the key in the hash is a string
# The ": " syntax is used when the key in the hash is a symbol
# require_relative refers to the filename with respect to the current director (generally used for local files)
# require needs the full path of the filename (generally used for gems)
# Ways to iterate through a hash are .each, .each_key, .each_pair, .each_value, .map
# When refactoring virus_effects, what stood out to me about the variables were that they were instance variables.
# A concept I most solidified for this challenge was iterating through a hash and refactoring.