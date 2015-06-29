def visual_space
	puts "-------------------"
end

def titlecase name
	name = name.gsub(/\w+/) do |word|
		word.capitalize
	end
name
end

def get_name name_position
	puts "What's your #{name_position} name?"
	input = gets.chomp
	input = titlecase input
	visual_space
input
end

puts "Hi"
firstname = get_name "first"
middlename = get_name "middle"
lastname = get_name "last"

fullname = "#{firstname} #{middlename} #{lastname}"

puts "Hi #{fullname}"

visual_space

puts "#{firstname}, What's your favourite number?"
fav_number = gets.chomp
new_fav_number = fav_number.to_i + 1

visual_space

puts "I think your new favourite number should be #{new_fav_number}"