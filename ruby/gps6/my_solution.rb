# Virus Predictor

# I, and Ben Acevedo, worked on this challenge with: Ian Agne.
# We spent 1 hour on this challenge together.
# I spent 30 min refactoring.

# require_relative looks for file relative to the file making the call.
# require looks for the file relative to the working directory in terminal.
require_relative 'state_data'

class VirusPredictor
# initialize initializes an instance of the class VirusPredictor with state_of_origin, population_density and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Publically displays the report
  def virus_effects
    display_report
  end
# private secures proprietary information within the object instance
  private
# display_report prints the output of predicted_deaths and speed_of_spread
  def display_report
    print "#{@state} will lose #{predicted_deaths} people in this outbreak"
    print " and will spread across the state in #{speed_of_spread} months.\n\n"
  end
# predicted_deaths looks at population_density and calculates number of death and prints that output.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case
      when @population_density >= X_LARGE_STATE[:pop_dense]
        number_of_deaths = (@population * X_LARGE_STATE[:pop_death]).floor
      when @population_density >= LARGE_STATE[:pop_dense]
        number_of_deaths = (@population * LARGE_STATE[:pop_death]).floor
      when @population_density >= MEDIUM_STATE[:pop_dense]
        number_of_deaths = (@population * MEDIUM_STATE[:pop_death]).floor
      when @population_density >= SMALL_STATE[:pop_dense]
        number_of_deaths = (@population * SMALL_STATE[:pop_death]).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end
  end
# speed_of_spread looks at population_density and calculates the speed of spread of the disease.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case
      when @population_density >= X_LARGE_STATE[:pop_dense]
        speed += X_LARGE_STATE[:speed]
      when @population_density >= LARGE_STATE[:pop_dense]
        speed += LARGE_STATE[:speed]
      when @population_density >= MEDIUM_STATE[:pop_dense]
        speed += MEDIUM_STATE[:speed]
      when @population_density >= SMALL_STATE[:pop_dense]
        speed += SMALL_STATE[:speed]
      else
        speed += 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, pop_info|
   state = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
   state.virus_effects
 end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#   All the state names keys are strings, and all the nested keys are symbols.
# What does require_relative do? How is it different from require?
#   require_relative looks for file relative to the file making the call.
#   require looks for the file relative to the working directory in terminal.
# What are some ways to iterate through a hash?
#   .each / .select
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   It was redundant to pass instance variables as arguments to instance methods because those variables were already available
# What concept did you most solidify in this challenge?
#   working with hashes.
