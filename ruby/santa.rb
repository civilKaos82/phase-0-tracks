
class Santa

attr_accessor :gender, :ethnicity, :age


  def initialize(gen, race)
    puts "Initializing Santa instance."
    @gender = gen
    @ethnicity = race
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
       "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie."
  end
#Start getter methods.
  #def age
  #  @age
  #end

  #def ethnicity
  #  @ethnicity
  #end
#end getter methods.
  def celebrate_birthday
    @age += 1
  end

  def gender_change(new_gender)
    @gender = new_gender
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end

end

santa1 = Santa.new("male", "mexican")
santa1.speak
santa1.eat_milk_and_cookies("white chocolate macadamia nut")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_races = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_races[i])
end

p santas
santas[0].celebrate_birthday
santas[1].get_mad_at("Rudolph")
santas[2].gender_change("Spyder")
p santas[0].age
p santas[0].ethnicity
#p santas [0]
#p santas [1]
#p santas [2]

#Release 4: Building many rando santas.
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_races = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10.times do |i|
  santas << Santa.new(example_genders.sample, example_races.sample)
end

p santas[0]
p santas[3]
p santas[6]
p santas[9]
