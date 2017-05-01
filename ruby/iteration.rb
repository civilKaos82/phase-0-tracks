#Michael H. Glaser paired with Daniel Digney.
#Release 1
cars_maufacturers = [
  "General Motors",
  "Ford",
  "Dodge",
  "Renault",
  "Aston Martin"
]

motorcycles = {
  "Japan" => "Yamaha",
  "the UK" => "Triumph",
  "the US" => "Buell"
}

cars_maufacturers.each do |car_makers|
  puts "What do you think about cars made by #{car_makers}."
end

motorcycles.each do |build_local, company|
  puts "The company #{company} is manufactured in #{build_local}."
end

crappy_motorcycles = motorcycles.map {|build_local, company| build_local <<
  " but crappy" }

cars_maufacturers.map! {|car_makers| car_makers << " but crappy"}

p cars_maufacturers

#Release 2
