def titlecase name
	name = name.gsub(/\w+/) do |word|
		word.capitalize
	end
name
end

puts "Hi"
puts "What's your first name?"
input = gets.chomp
firstname = titlecase input

puts "-------------------"

puts "What's your middle name?"
input = gets.chomp
middlename = titlecase input

puts "-------------------"

puts "What's your last name?"
input = gets.chomp
lastname = titlecase input

puts "-------------------"

fullname = "#{firstname} #{middlename} #{lastname}"

puts "Hi #{fullname}"

puts "-------------------"

puts "#{firstname}, What's your favourite number?"
fav_number = gets.chomp

new_fav_number = fav_number.to_i + 1

puts "-------------------"

puts "I think your new favourite number should be #{new_fav_number}"

puts "-------------------"