puts "Welcome to Werewolf & Associates. Please fill out the following
questionair:"
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = Integer(gets.chomp)
puts "What year were you born in?"
birth_date = Integer(gets.chomp)
#This code block makes the garlic_bread answer a boolean & spits out nil if you
#do not provide an answer in the y or n format.
garlic_bread = nil
while garlic_bread == nil
  puts "Would you like any garlic bread? (y/n)"
  garlic_bread = gets.chomp
  if garlic_bread == "y"
      garlic_bread = true
    elsif garlic_bread == "n"
      garlic_bread = false
  else
      garlic_bread = nil
  end
end

#This code block makes the insurance answer a boolean & spits out nil if you
#do not provide an answer in the y or n format.
insurance = nil
puts "Are you interested in our health insurance plan? (y/n)"
while insurance == nil
    insurance = gets.chomp
  if insurance == "y"
      insurance = true
    elsif insurance == "n"
      insurance = false
  else
      insurance = nil
  end
end
