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
  p "Your crypto word is #{output}"
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
  p "Your crypto word is #{output}"
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))
