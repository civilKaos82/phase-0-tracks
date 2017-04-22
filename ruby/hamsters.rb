puts "Welcome to the Hamster imporium! Your one stop shop for hamsters!"
puts "What is that little fella's name?"
hamster_name = gets.chomp
puts "How loud would ya say they are?"
level = Integer(gets.chomp)
puts "What color would you say that is?"
color = gets.chomp
puts "Do you think they're a good candidate for adoption? (t/f)"
adoption = gets.chomp
if adoption == "t"
  adoption = true
elsif adoption == "f"
  adoption = false
else
  adoption = nil
end
puts "What is #{hamster_name}'s age? (In years)"
age = Integer(gets.chomp)
if age <= 0
  age = nil
else
end


puts "So, you're telling me that little guy is named #{hamster_name}. On a scale
 of 1 to 10, you'd say he's a #{level}. He looks like he's #{color}. It is
 #{adoption} that he's a good candidate for adoption."
