puts "Hi"
puts "What's your first name?"
firstname = gets.chomp
firstname = firstname.gsub(/\w+/) do |word|
	word.capitalize
end

puts "-------------------"

puts "What's your middle name?"
middlename = gets.chomp
middlename = middlename.gsub(/\w+/) do |word|
	word.capitalize
end

puts "-------------------"

puts "What's your last name?"
lastname = gets.chomp
lastname = lastname.gsub(/\w+/) do |word|
	word.capitalize
end

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