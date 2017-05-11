class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(barks)
    barks.times {puts "WOOF!"}
  end

  def roll_over()
    puts "*rolls over*"
  end
#Releas 1:
  def initialise()
    puts "Initializing new puppy instance ..."
  end
#end of Release 1.
  def dog_years(human_years)
    dog_age = human_years * 7
    puts "Ole is #{dog_age} in dog years."
  end

  def dog_action(options)
    puts "Ole has decided to sleep instead of #{options}."
  end

end

#Release 0:
ole = Puppy.new
ole.fetch("ball")
ole.speak(3)
ole.dog_years(2)
ole.dog_action("sit")

class Car

  def initialize
    puts "Initializing new car instance."
  end

  def accel(accel_speed)
    puts "The car starts to accelerate #{accel_speed}."
  end

  def decel(decel_speed)
    puts "The car begins to decelerate #{decel_speed}."
  end

  def turn(direction)
    puts "The car starts to turn to the #{direction}."
  end

end

car1 = Car.new
car1.accel("quickly")
car1.turn("left")
car1.turn("right")
car1.decel("abruptly")

cars = []

50.times do
  cars << Car.new
end

cars.each do |car_instance|
  car_instance.accel("quickly")
  car_instance.turn("left")
  car_instance.turn("right")
  car_instance.decel("abruptly")
end
