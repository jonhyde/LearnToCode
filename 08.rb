# def ask question
#   goodAnswer = false
#   while (not goodAnswer)
#     puts question
#     reply = gets.chomp.downcase

#     if (reply == 'yes' or reply == 'no')
#       goodAnswer = true
#       if reply == 'yes'
#         answer = true
#       else
#         answer = false
#       end
#     else
#       puts 'Please answer "yes" or "no".'
#     end
#   end

#   answer  # This is what we return (true or false).
# end

# puts 'Hello, and thank you for...'
# puts

# ask 'Do you like eating tacos?'      # We ignore this return value.
# ask 'Do you like eating burritos?'
# wetsBed = ask 'Do you wet the bed?'  # We save this return value.
# ask 'Do you like eating chimichangas?'
# ask 'Do you like eating sopapillas?'
# ask 'Do you like eating tamales?'
# puts 'Just a few more questions...'
# ask 'Do you like drinking horchata?'
# ask 'Do you like eating flautas?'

# puts
# puts 'DEBRIEFING:'
# puts 'Thank you for...'
# puts
# puts wetsBed

# def englishNumber number
#   # We only want numbers from 0-100.
#   if number < 0
#     return 'Please enter a number zero or greater.'
#   end
#   if number > 100
#     return 'Please enter a number 100 or lesser.'
#   end

#   numString = ''  # This is the string we will return.

#   # "left" is how much of the number we still have left to write out.
#   # "write" is the part we are writing out right now.
#   # write and left... get it?  :)
#   left  = number
#   write = left/100          # How many hundreds left to write out?
#   left  = left - write*100  # Subtract off those hundreds.

#   if write > 0
#     return 'one hundred'
#   end

#   write = left/10          # How many tens left to write out?
#   left  = left - write*10  # Subtract off those tens.

#   if write > 0
#     if write == 1  # Uh-oh...
#       # Since we can't write "tenty-two" instead of "twelve",
#       # we have to make a special exception for these.
#       if    left == 0
#         numString = numString + 'ten'
#       elsif left == 1
#         numString = numString + 'eleven'
#       elsif left == 2
#         numString = numString + 'twelve'
#       elsif left == 3
#         numString = numString + 'thirteen'
#       elsif left == 4
#         numString = numString + 'fourteen'
#       elsif left == 5
#         numString = numString + 'fifteen'
#       elsif left == 6
#         numString = numString + 'sixteen'
#       elsif left == 7
#         numString = numString + 'seventeen'
#       elsif left == 8
#         numString = numString + 'eighteen'
#       elsif left == 9
#         numString = numString + 'nineteen'
#       end
#       # Since we took care of the digit in the ones place already,
#       # we have nothing left to write.
#       left = 0
#     elsif write == 2
#       numString = numString + 'twenty'
#     elsif write == 3
#       numString = numString + 'thirty'
#     elsif write == 4
#       numString = numString + 'forty'
#     elsif write == 5
#       numString = numString + 'fifty'
#     elsif write == 6
#       numString = numString + 'sixty'
#     elsif write == 7
#       numString = numString + 'seventy'
#     elsif write == 8
#       numString = numString + 'eighty'
#     elsif write == 9
#       numString = numString + 'ninety'
#     end

#     if left > 0
#       numString = numString + '-'
#     end
#   end

#   write = left  # How many ones left to write out?
#   left  = 0     # Subtract off those ones.

#   if write > 0
#     if    write == 1
#       numString = numString + 'one'
#     elsif write == 2
#       numString = numString + 'two'
#     elsif write == 3
#       numString = numString + 'three'
#     elsif write == 4
#       numString = numString + 'four'
#     elsif write == 5
#       numString = numString + 'five'
#     elsif write == 6
#       numString = numString + 'six'
#     elsif write == 7
#       numString = numString + 'seven'
#     elsif write == 8
#       numString = numString + 'eight'
#     elsif write == 9
#       numString = numString + 'nine'
#     end
#   end

#   if numString == ''
#     # The only way "numString" could be empty is if
#     # "number" is 0.
#     return 'zero'
#   end

#   # If we got this far, then we had a number somewhere
#   # in between 0 and 100, so we need to return "numString".
#   numString
# end

# puts englishNumber(  0)
# puts englishNumber(  9)
# puts englishNumber( 10)
# puts englishNumber( 11)
# puts englishNumber( 17)
# puts englishNumber( 32)
# puts englishNumber( 88)
# puts englishNumber( 99)
# puts englishNumber(100)

# def englishNumber number
#   if number < 0  # No negative numbers.
#     return 'Please enter a number that isn\'t negative.'
#   end
#   if number == 0
#     return 'zero'
#   end

#   # No more special cases! No more returns!

#   numString = ''  # This is the string we will return.

#   onesPlace = ['one',     'two',       'three',    'four',     'five',
#                'six',     'seven',     'eight',    'nine']
#   tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
#                'sixty',   'seventy',   'eighty',   'ninety']
#   teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
#                'sixteen', 'seventeen', 'eighteen', 'nineteen']

#   # "left" is how much of the number we still have left to write out.
#   # "write" is the part we are writing out right now.
#   # write and left... get it?  :)
#   left  = number
#   write = left/100          # How many hundreds left to write out?
#   left  = left - write*100  # Subtract off those hundreds.

#   if write > 0
#     # Now here's a really sly trick:
#     hundreds  = englishNumber write
#     numString = numString + hundreds + ' hundred'
#     # That's called "recursion". So what did I just do?
#     # I told this method to call itself, but with "write" instead of
#     # "number". Remember that "write" is (at the moment) the number of
#     # hundreds we have to write out. After we add "hundreds" to
#     # "numString", we add the string ' hundred' after it.
#     # So, for example, if we originally called englishNumber with
#     # 1999 (so "number" = 1999), then at this point "write" would
#     # be 19, and "left" would be 99. The laziest thing to do at this
#     # point is to have englishNumber write out the 'nineteen' for us,
#     # then we write out ' hundred', and then the rest of
#     # englishNumber writes out 'ninety-nine'.

#     if left > 0
#       # So we don't write 'two hundredfifty-one'...
#       numString = numString + ' '
#     end
#   end

#   write = left/10          # How many tens left to write out?
#   left  = left - write*10  # Subtract off those tens.

#   if write > 0
#     if ((write == 1) and (left > 0))
#       # Since we can't write "tenty-two" instead of "twelve",
#       # we have to make a special exception for these.
#       numString = numString + teenagers[left-1]
#       # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

#       # Since we took care of the digit in the ones place already,
#       # we have nothing left to write.
#       left = 0
#     else
#       numString = numString + tensPlace[write-1]
#       # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
#     end

#     if left > 0
#       # So we don't write 'sixtyfour'...
#       numString = numString + '-'
#     end
#   end

#   write = left  # How many ones left to write out?
#   left  = 0     # Subtract off those ones.

#   if write > 0
#     numString = numString + onesPlace[write-1]
#     # The "-1" is because onesPlace[3] is 'four', not 'three'.
#   end

#   # Now we just return "numString"...
#   numString
# end

# puts englishNumber(  0)
# puts englishNumber(  9)
# puts englishNumber( 10)
# puts englishNumber( 11)
# puts englishNumber( 17)
# puts englishNumber( 32)
# puts englishNumber( 88)
# puts englishNumber( 99)
# puts englishNumber(100)
# puts englishNumber(101)
# puts englishNumber(234)
# puts englishNumber(3211)
# puts englishNumber(999999)
# puts englishNumber(1000000000000)






def english_number number
if number < 0 # no neg numbers
return 'Please enter a number that isn\'t negative'
end
if number == 0
return 'zero'
end

# no more special cases, no more returns

num_string = '' # This is the string we will return, define it an start 'empty'

ones_place = [ 'one', 'two', 'three',
'four', 'five', 'six',
'seven', 'eight', 'nine']

tens_place = [ 'ten', 'twenty', 'thirty',
'forty', 'fifty', 'sixty',
'seventy', 'eighty', 'ninty']

teenagers = [ 'eleven', 'twelve', 'thirteen',
'fourteen', 'fifteen', 'sixteen',
'seventeen', 'eighteen', 'nineteen']


# "left" is how much of the number we still have to write
# "write" is which part we are writing out at the time

left = number

# trillions
write = left/1000000000000
left = left - write*1000000000000

if write > 0
trillions = english_number write
num_string = num_string + trillions + ' trillion'

if left > 0
num_string = num_string + ' '
end
end

# billions
write = left/1000000000
left = left - write*1000000000

if write > 0
billions = english_number write
num_string = num_string + billions + ' billion'

if left > 0
num_string = num_string + ' '
end
end

# millions
write = left/1000000
left = left - write*1000000

if write > 0
millions = english_number write
num_string = num_string + millions + ' million'

if left > 0
num_string = num_string + ' '
end
end

# thousands
write = left/1000
left = left - write*1000

if write > 0
thousands = english_number write
num_string = num_string + thousands + ' thousand'

if left > 0
num_string = num_string + ' '
end
end

write = left/100 # how many hundreds left
left = left - write*100 # subtract off those hundreds

if write > 0
# recursion
hundreds = english_number write
num_string = num_string + hundreds + ' hundred'

if left > 0
# adds a space
num_string = num_string + ' '
end
end

write = left/10 # how many tens left
left = left - write*10 # subtract off those tens

if write > 0
if ((write == 1) and (left > 0))
# exception for teenagers
num_string = num_string + teenagers[left-1]
# -1 because of the array ordering [0] is eleven etc.
# with teenagers the digit in the ones place is taken care of so nothing left
left = 0
else
num_string = num_string + tens_place[write-1]
end

if left > 0
# add a space
num_string = num_string + '-'
end
end

write = left # how many ones left
left = 0 # subtract off those ones

if write > 0
num_string = num_string + ones_place[write-1]
end

# now we just return the num_string

num_string
end

bottles = 999
while bottles != 0
puts english_number(bottles).to_s + ' bottles of beer on the wall'
puts english_number(bottles).to_s + ' bottles of beer'
bottles = bottles - 1
puts 'take one down, pass it around'

if bottles == 1
puts english_number(bottles).to_s + ' bottle of beer on the wall'
else 
puts english_number(bottles).to_s + ' bottles of beer on the wall'
end

puts ''

if bottles == 1
puts english_number(bottles).to_s + ' bottle of beer on the wall'
puts english_number(bottles).to_s + ' bottle of beer'
bottles = bottles - 1
puts 'take one down, pass it around'
puts english_number(bottles).to_s + ' bottles of beer on the wall'
end 

end