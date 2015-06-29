# a = Array.new  + [12345]  # Array  addition.
# b = String.new + 'hello'  # String addition.
# c = Time.new

# puts 'a = '+a.to_s
# puts 'b = '+b.to_s
# puts 'c = '+c.to_s

# time  = Time.new   # The moment I generated this web page.
# time2 = time + 60  # One minute later.

# puts time
# puts time2

# puts Time.mktime(2000, 1, 1)          # Y2K.
# puts Time.mktime(1981, 3, 28)  # When I was born.




# birthday = Time.mktime(1981, 3, 28, 06,00)
# today = Time.new
# difference = today - birthday

# puts birthday
# puts today
# puts difference


# 											# Asks you your birthday and then tells you how old you are
# def ask question, length_check, max_check 	#method to ask a 'question' (arguement) and validate the response using 'length_check' & 'max_check' arguements 
# goodAnswer = false
# 	while (not goodAnswer) 					#checks to ensure a valid answer
# 	puts question 							#writes out the 'question' part of the arguement
# 	reply = gets.chomp						#sets reply to the user's answer (minus the return)
# 		if (reply.length == length_check and reply.to_i <= max_check) #checks to ensure the correct number of characters have been entered and they are a valid number
# 		goodAnswer = true					#if it passes the check then we move out of the loop
# 		answer = reply						#sets the user's reply to the response out of the arguement, on reflection, this is unnecessary and we could just return the reply
# 		else
# 		puts "Please enter a #{length_check} digit number and a valid response" #what we loop through until we have a valid response
# 		end
# 	end
# 	answer 									#what we return out of the method
# end
 
# Year = ask 'What year were you born in (YYYY)?', 4, Time.now.year #passes in the year question, expecting a length of 4 and the current year, sets the response to the Year variable

# Month = ask 'What month were you born in (MM)?', 2, 12 #as above except months and a fixed length of 2 and a max number of 12

# Day = ask 'What day were you born on (DD)?', 2, 31 #as above with fixed length of 2 and max of 31. Obviously this leaves it open to errors but I can't be arsed to add the complication

# # puts Year
# # puts Month
# # puts Day
# birthday = Time.mktime(Year, Month, Day) 			#sets the variable 'birthday' to the UTC time representation using the Year, Month and Day variables
# # puts birthday

# today  = Time.new
# # puts today

# diff_secs = today - birthday				#calculates the number of seconds difference between the date provided and today

# # puts diff_secs
# mins_alive = diff_secs / 60					#translates those seconds into minutes
# # puts mins_alive
# hours_alive = mins_alive / 60				#translates those minutes into hours
# # puts hours_alive
# days_alive = hours_alive / 24 				#translates those hours into days
# # puts days_alive
# years_alive = days_alive / 365.2425			#translates those days into years
# years_alive = years_alive .round(0)			#rounds the number of years down to 0 decimal places

# puts "You are #{years_alive} years old. Congratulations!"
# puts "Congratulations 
# " * years_alive


# colorArray = []  # same as Array.new

# colorArray[0]         = 'red'
# colorArray[1]         = 'green'
# colorArray[2]         = 'blue'

# colorArray.each do |color|
#   puts color
# end

# colorHash  = {}  # same as Hash.new
# colorHash['strings']  = 'red'
# colorHash['numbers']  = 'green'
# colorHash['keywords'] = 'blue'


# colorHash.each do |codeType, color|
#   puts codeType + ':  ' + color
# end
# puts colorHash

# puts colorHash['strings']

# puts colorHash.keys 


# class Integer
#   def to_eng
#     if self == 5
#       english = 'five'
#     else
#       english = 'fifty-eight'
#     end

#     english
#   end
# end

# # I'd better test on a couple of numbers...
# puts 5.to_eng
# puts 58.to_eng






# class Die

#   def roll
#     1 + rand(6)
#   end

# end

# # Let's make a couple of dice...
# dice = [Die.new, Die.new]

# # ...and roll them.
# dice.each do |die|
#   puts die.roll
# end




# class Die

#   def roll
#     @numberShowing = 1 + rand(6)
#   end

#   def showing
#     @numberShowing
#   end

# end

# die = Die.new
# die.roll
# puts die.showing
# puts die.showing
# die.roll
# puts die.showing
# puts die.showing





## Dice game

# class Die
  
#   def initialize die_sides = 6, rigged_number = 0
#     # I'll just roll the die, though we
#     # could do something else if we wanted
#     # to, like setting the die with 6 showing.
#     @rigged_number = rigged_number
#     @sides = die_sides
#     @invalid_rigged = false
    
#     puts "Sides: #{@sides}"
#     puts "Rigged number: #{@rigged_number}"

#     if @rigged_number > @sides
#       @rigged_number = 0
#       @invalid_rigged = true
#       puts "Invalid rigged number - defaulting to not set"
#     end

#     puts "Invalid rigged status: #{@invalid_rigged}"
#     roll
#   end

#   def cheat
#     @numberShowing = @rigged_number
#   end

#   def roll
#     if @rigged_number > 0
#       cheat
#     else
#       @numberShowing = 1 + rand(@sides)
#     end
#   end

#   def showing
#     if @invalid_rigged == true
#       status = "invalid"
#       else
#       status  = (@rigged_number == 0) ? "random" : "rigged"
#     end
#     puts "Dice rolled (#{status}): #{@numberShowing}"
#   end

#   def value
#     @numberShowing
#   end

#   def rollandshow
#     roll
#     showing
#   end
# end

# # normal_die = Die.new 6, 0
# # for i in 1..10
# #   normal_die.rollandshow
# # end

# rigged_die = Die.new 6, 6
# for i in 1..10
#   rigged_die.rollandshow
# end

# rigged_die = Die.new 6, 8
# for i in 1..10
#   rigged_die.rollandshow
# end

# Die1 = Die.new
# Die2 = Die.new
# Result = Die1.value + Die2.value

# puts Die1.value
# puts Die2.value
# puts Result























class Dragon

def initialize name, sleep_hours
@name = name
@asleep = false
@stuff_in_belly = 10 # he's full
@stuff_in_intestine = 0 # doesn't need to go
@hours_to_sleep = sleep_hours

puts @name + ' is born.'
end

# Feed
def feed
puts 'You feed ' + @name + '.'
@stuff_in_belly = 10
passage_of_time
end

# Walk
def walk
puts 'You walk ' + @name + '.'
@stuff_in_intestine = 0
passage_of_time
end

# Put to bed 
def put_to_bed
puts 'You put ' + @name + ' to bed.'
@asleep = true
@hours_to_sleep. times do
if @asleep
passage_of_time
end
if @asleep
puts @name + ' snores, filling the room with smoke.'
end
end
if @asleep
@asleep = false
puts @name + ' wakes up slowly.'
end
end

# Toss
def toss
puts 'You toss ' + @name + ' up into the air.'
puts 'He giggles, which singes your eyebrows.'
passage_of_time
end

# Rock
def rock
puts 'You rock ' + @name + ' gently.'
@asleep = true
puts 'He briefly dozes off...'
passage_of_time
if @asleep
@asleep = false
puts '...but wakes when you stop'
end
end

private

# following methods are internal

# hungry?
def hungry?
@stuff_in_belly <= 2
end

# poopy?
def poopy?
@stuff_in_intestine >= 8
end

# passage of time, this is when things happen
def passage_of_time
if @stuff_in_belly > 0
# move food from belly to intestine
@stuff_in_belly = @stuff_in_belly - 1
@stuff_in_intestine = @stuff_in_intestine + 1
else
if @asleep
@asleep = false
puts 'He wakes up suddenly!'
end
puts @name + ' is starving! In desperation, he ate YOU!'
exit
end

if @stuff_in_intestine >= 10
@stuff_in_intestine = 0
puts 'Whoops! ' + @name + ' had an accident...'
end

if hungry?
if @asleep
@asleep = false
puts 'He wakes up suddenly!'
end
puts @name + '\'s stomach grumbles...'
end

if poopy?
if @asleep
@asleep = false
puts 'He wakes up suddenly!'
end
puts @name + ' does the potty dance...'
end
end

end

pet = Dragon.new 'Norbert', 8

command = ''

while command != 'exit'
puts 'Enter a command to control your dragon:'
command = gets.chomp
if command == 'feed'
pet.feed
elsif command == 'walk'
pet.walk
elsif command == 'sleep'
pet.put_to_bed
elsif command == 'toss' 
pet.toss
elsif command == 'rock' 
pet.rock
elsif command == 'exit'
exit
else 
puts 'Can\'t recognize your command, please re-enter.'
end 

end
