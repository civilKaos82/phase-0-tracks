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
ole.speak(gets.chomp.to_i)
ole.dog_years(gets.chomp.to_i)
ole.dog_action("sit")
