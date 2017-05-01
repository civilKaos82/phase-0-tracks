#Release 0:

puts "Insert First Name"
first_name = gets.chomp
first_name_array = first_name.chars
#p first_name_array
first_name_index = 0
vowel_index = ["a", "e", "i", "o", "u"]
first_name_array.each do |vowel_shift|
  if vowel_index.include?(vowel_shift)
     first_name_array[first_name_index] =
     first_name_index += 1
    else

  end
end
shifted_first_name = first_name_array.join('')
#p shifted_first_name

puts "Insert Last Name"
last_name = gets.chomp

full_name = [first_name, last_name]

alias_first = shifted_first_name[1]
alias_last = full_name[0]

#p alias_first
#p alias_last
