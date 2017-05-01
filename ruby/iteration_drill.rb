# Challenge 5.7: Iteration Drills
# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

puts "---->Array Drills: Question # 1<----"
zombie_apocalypse_supplies.each do |supplies|
	puts supplies + "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

puts "---->Array Drills: Question # 2<----"
p zombie_apocalypse_supplies.map(&:downcase).sort

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

puts "---->Array Drills: Question # 3<----"
def include_meth(string)
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
p zombie_apocalypse_supplies.include?(string)
end

puts "Includes 'boots': "
include_meth('boots')
puts "Includes 'compass': "
include_meth('compass')

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

puts "----Array Drills: Question # 4<-----"
p zombie_apocalypse_supplies.pop(5)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

puts "----Array Drills: Question # 5<-----"
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

p (other_survivor_supplies.concat(zombie_apocalypse_supplies)).uniq


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

puts "---->Hash Drills: Question # 1<----"
puts "Iterate through hash with dash and asterisk".upcase
extinct_animals.each do |animals, extinction_year|
  puts "  #{animals}-#{extinction_year}*"
end


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

puts "---->Hash Drills: Question # 2<----"
puts "Animals extinct before year 2000".upcase
extinct_animals.each do |animals, extinction_year|
    if extinction_year < 2000
    puts "  #{animals}-->#{extinction_year}"
    else
    p
  end
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

puts "----Hash Drills: Question # 3<-----"
puts "*REVISED Animal Extinction Years".upcase
extinct_animals.each do |animals, extinction_year|
    puts "  *#{animals}-->#{extinction_year - 3}"

end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

puts "---->Hash Drills: Question # 4<----"
puts "Is the Andean Cat extinct? "
p extinct_animals.include?("Andean Cat")
puts "Is the Dodo extinct? "
p extinct_animals.include?("Dodo")
puts "Is Saiga Antelope extinct? "
p extinct_animals.include?("Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

 puts "---->Hash Drills: Question # 5<----"
p extinct_animals.rassoc(1914)
