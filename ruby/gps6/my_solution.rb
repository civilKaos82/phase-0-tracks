# Virus Predictor

# I worked on this challenge [by myself (Michael H. Glaser)  with: Hassan Almandil].
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#This is the code that reference is the file state_date.rb  It is the same as
#adding the code in state_date.rb at the lcoation where we typied in
# 'require_relative'. You can also use the code below if you wanted to
#specify exactly where the program is to look, instead of relative to this file:
#require '~DBC/phase-0-tracks/ruby/gps6/state_data'

class VirusPredictor

  #The method below initializes each instance of VirusPredictor with instance variables default values.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    #factors_hash: We created this to host the factors that will affect the speed_of_spread
    @factors_hash = {
      0...50 => [0.05, 2.5],
      50...100 => [0.1, 2],
      100...150 => [0.2, 1.5],
      150...200 => [0.3, 1],
      200...20000 => [0.4, 0.5]
    }
  end

#This method combines the output of both predicted deaths and speed of spread. This is used
# because the other two instance methods are private and cannot be called on their own.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #This is so the methods below cannot be called outside the class definition.

#This method will call the state's name and, depending on the population density,
# identify the number of deaths based on population and population factor.
#This instance method is private and cannot be called on its own outside the class definition.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#This method will output the text regarding the speed of the virus spread.
#this method is private and cannot be called outside the class definition.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#New feature for all 50 states.
STATE_DATA.each do |state_name, population_info|
  new_virus = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  new_virus.virus_effects
end

#=======================================================================
# Reflection Section

#hat are the differences between the two different hash syntaxes shown in the state_data file?
#- The keys in the main hash are strings like "Alabama"
#  while they are Symbols on the inner hash like: population_density:
#What does require_relative do? How is it different from require?
#- link another file to the current, its as we copied the code on
#  the require_relative to the active file
#  there is no diffrent in the function but there is a differnt with the file location
#  we used here  require './state_data.rb' instead of require_relative 'state_data' to test
#  it and it worked as expected
#What are some ways to iterate through a hash?
# .select .map .each and many others
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#- All the variables are available on class level,
#  so we dont need to push to other methods that this method is calling
#What concept did you most solidify in this challenge?
#- one of the issues to deside which refactoring way is more suitable
