#Release 0:

puts "Insert First Name"
name = gets.chomp
name_array = name.chars
#p first_name_array
name_index = 0
vowel_index = ["a", "e", "i", "o", "u"]
name_array.each do |letter_shift|
  while index < name_array.length
  if vowel_index.include?(vowel_shift)
     first_name_array[first_name_index] =
     first_name_index += 1
    else
  end
end

def alias(name)
  index = 0
  output = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < message.length
    message_letter = message[index]
    message_letter_number = alphabet.index(message_letter)
    if message_letter_number < 25
      new_letter_number = message_letter_number + 1
    else
      new_letter_number = message_letter_number - 25
    end
    new_message_letter = alphabet[new_letter_number]
    output += alphabet[new_letter_number]
    index += 1
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
