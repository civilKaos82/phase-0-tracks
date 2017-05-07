#Release 0 start.
class Santa




  def initialize(gen, race)
    puts "Initializing Santa instance."
    @gender = gen
    @ethnicity = race
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
       "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie."
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity

end

santa1 = Santa.new("male", "mexican")
santa1.speak
santa1.eat_milk_and_cookies("white chocolate macadamia nut")
#release 0 end.

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_races = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_races[i])
end
