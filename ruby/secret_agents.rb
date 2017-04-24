#Release 2


#Encryption Method
def encrypt(message)

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
  puts "Your encrypted word is #{output}"
end

#Decryption Method
def decrypt(message)
  #puts "Insert message for crypto"

  index = 0
  output = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alphabet = alphabet.reverse!
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
  puts "Your decrypted word is #{output}"
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish")) #This nested method call does not work
#because the scope of the encrypted method does not extend to the decrypt
#method. In other words, the two methods are separate and independent from
#each other.

puts "Good afternoon, Jim. Your mission, should you choose to accept it,
is to decrypt or encrypt a password. As always, should you or any of your
I.M. force be caught or killed, the Secretary will disavow any knowledge
of your actions. This program will self destruct in 5 seconds.
(I lied. No it won't.)"
puts "Now, would you like to encrypt or decrypt a password? (E/D)"
user_action = gets.chomp
user_action = user_action[0]
user_action = user_action.upcase
encryption = false
decryption = false
until (encryption || decryption)
  if user_action == "E"
    encryption = true
    puts "Please provide a password to be encrypted."
    password = gets.chomp
    encrypt(password)
  elsif user_action == "D"
    decryption = true
    puts "Please provide an encrypted password to decrypt."
    password = gets.chomp
    decrypt(password)
  else
    encryption = false
    decryption = false
  end
end
