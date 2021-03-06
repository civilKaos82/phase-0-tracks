# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
 "iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
"zom".insert(2, 'o')
# => “zoom”

 "enhance".replace("     enhance     ")
 "enhance".center(17, ' ')
 "enhance".center(17)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".ljust(18, ' suspects')
"the usual".insert(-1, ' suspects')
#=> "the usual suspects"

" suspects".insert(0, 'the usual')
" suspects".replace('the usual suspects')
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chop!
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".tr('T', '')
"The mystery of the missing first letter".replace("he mystery of the missing first letter")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".tr_s('  ', ' ')
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII code for the character "z"

"How many times does the letter 'a' appear in this string?".count('a')
# => 4
