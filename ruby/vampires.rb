puts "Welcome to Werewolf & Associates. Please fill out the following
questionair:"
employee_count = 0
puts "How many employees will you be processing?"
max_employees = Integer(gets.chomp)
while employee_count < max_employees
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = Integer(gets.chomp)
  puts "What year were you born in?"
  birth_year = Integer(gets.chomp)
  current_year = 2017

  #This next code is to test if they got their age correct.
  age_correct = false
  age_incorrect = false
  if age == (current_year - birth_year)
    age_correct = true
  else
    age_incorrect = true
  end

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

  #Release 3:
  allergy = nil
  while allergy == nil
    puts "Please name any allergies you may have. Type 'done' when complete."
    allergy = gets.chomp
    allergy = allergy.downcase
    if allergy == "sunshine"
      vampire = true
    elsif allergy == "done"

    else
      allergy = nil
    end
  end
  #Release 2:
  if name == "Drake Cula"
    puts "Definitely a vampire."
  elsif name == "Tu Fang"
    puts "Definitely a vampire."
  elsif vampire
    puts "Definitely a vampire."
  elsif (age_correct && (garlic_bread || insurance))
    puts "Probabaly not a vampire."
  elsif (age_incorrect && (garlic_bread || insurance))
    puts "Probabaly a vampire."
  elsif (age_correct && (garlic_bread || insurance)) == false
    puts "Almost certainly a vampire"
  elsif name == "Wu Tang"
    puts "Definitely an immortal group of 90's hiphop kung-fu masters."
  else
    puts "Results inconclusive."
  end
  employee_count += 1
end
