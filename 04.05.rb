def visual_space
	puts "-------------------"
end

def set_titlecase name
	name = name.gsub(/\w+/) do |word|
		word.capitalize
	end
name
end

def get_name name_position
	puts "What's your #{name_position} name?"
	input = gets.chomp
	input = set_titlecase input
	visual_space
input
end

def get_fav_number fullname, firstname
	puts "Hi #{fullname},"
	visual_space
	puts "#{firstname}, What's your favourite number?"
	visual_space
	fav_number = gets.chomp
	new_fav_number = rand(100) #this is the only difference to 04.04, just adds a random number
	puts "I think your new favourite number should be #{new_fav_number}"
end

fullname = []
names_needed = ["first", "middle", "last"]

names_needed.each do |name|
	name_part = get_name name
	fullname.push(name_part)
end

fullname_english = fullname.map { |i| i.to_s}.join(" ")

get_fav_number fullname_english, fullname.first
