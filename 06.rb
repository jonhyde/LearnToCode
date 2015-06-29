#Printing text commands
# chap1_name = 'Chapter 1:  Numbers'
# chap1_page = 'page 1'
# chap2_name = 'Chapter 2:  Letters'
# chap2_page = 'page 72'
# chap3_name = 'Chapter 3:  Variables'
# chap3_page = 'page 118'

# lineWidth = 42
# puts chap1_name.ljust(lineWidth/2) + chap1_page.rjust(lineWidth/2)
# puts chap2_name.ljust(lineWidth/2) + chap2_page.rjust(lineWidth/2)
# puts chap3_name.ljust(lineWidth/2) + chap3_page.rjust(lineWidth/2)

#Random numbers
#puts rand
#puts rand(5)
#puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
#puts('but you can never trust a weatherman.')

# srand 1
# puts(rand(100))
# puts(rand(100))
# puts(rand(100))
# puts(rand(100))
# puts(rand(100))
# puts ''
# srand 1
# puts(rand(100))
# puts(rand(100))
# puts(rand(100))
# puts(rand(100))
# puts(rand(100))

# Chapter 6 - Flow Control
# puts 1 > 2
# puts 1 < 2
# puts 5 >= 5 
# puts 5 <= 4
# puts 'cat' < 'dog'

#Branching
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Jon'
# puts 'What a lovely name!'
# end

# puts 'Hello, and welcome to 7th grade English.'
# puts 'My name is Mrs. Gabbard.  And your name is...?'
# name = gets.chomp

# if name == name.capitalize
#   puts 'Please take a seat, ' + name + '.'
# else
#   puts name + '?  You mean ' + name.capitalize + ', right?'
#   puts 'Don\'t you even know how to spell your name??'
#   reply = gets.chomp

#   if reply.downcase == 'yes'
#     puts 'Hmmph!  Well, sit down!'
#   else
#     puts 'GET OUT!!'
#   end
# end

# command = '' #Original

# while command != 'bye'
#   puts command
#   command = gets.chomp
# end

# puts 'Come again soon!'

# input = '' #Amended
# while input != 'bye'
# input = gets.chomp
# if input != 'bye'
# puts input
# end 
# end
# puts 'Come again soon!'


# iAmChris  = true
# iAmPurple = false
# iLikeFood = true
# iEatRocks = false

# puts (iAmChris  and iLikeFood)
# puts (iLikeFood and iEatRocks)
# puts (iAmPurple and iLikeFood)
# puts (iAmPurple and iEatRocks)
# puts
# puts (iAmChris  or iLikeFood)
# puts (iLikeFood or iEatRocks)
# puts (iAmPurple or iLikeFood)
# puts (iAmPurple or iEatRocks)
# puts
# puts (not iAmPurple)
# puts (not iAmChris )


# # Deaf Grandma program
# say = ''
# while say != 'BYE'
# say = gets.chomp
# while say != say.upcase
# puts 'HUH?!  SPEAK UP, SONNY!'
# say = gets.chomp
# end
# year = rand(21) + 1930
# puts 'NO, NOT SINCE ' + year.to_s + '!'
# end

puts 'Input a starting year:'
start_year = gets.chomp
puts 'Input an ending year:'
end_year = gets.chomp
puts ''

while start_year.to_i <= end_year.to_i

if start_year.to_f%400 == 0
puts start_year
elsif start_year.to_f%100 == 0
elsif start_year.to_f%4 == 0
puts start_year
end

start_year = start_year.to_i + 1

end