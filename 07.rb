# languages = ['English', 'German', 'French']

# languages.each do |lang|
#   puts 'I love ' + lang + '!'
#   puts 'Don\'t you?'
# end

# puts 'And let\'s hear it for C++!'
# puts '...'

# 3.times do
#   puts 'Hip-Hip-Hooray!'
# end
# puts '...'

# foods = ['artichoke', 'brioche', 'caramel']

# puts foods.join(', ') + '.'

# favorites = []
# favorites.push 'raindrops on roses'
# favorites.push 'whiskey on kittens'
# puts favorites.to_s

# # Reading a list and reformatting it
# list = []
# word = 'x'
# puts 'Type below'
# while word != ''
# word = gets.chomp
# list.push word
# end
# list.pop
# list = list.sort
# puts list.join(', ')

# toc = ['Table of Contents', 'Chapter 1:  Numbers', 'page 1','Chapter 2:  Letters','page 72',
# 'Chapter 3:  Variables','page 118']
# line_width = 42
# i = 0
# puts(toc[0].center(line_width))
# puts =''
# until i == toc.length-1
# 	puts (toc[i += 1].ljust(line_width/2) + toc[i += 1].rjust(line_width/2)) #What does += mean??
# end

# Reading a list of numbers  and reordering it
list = []
num = 'x'
puts 'Type below'
while num != ''
num = gets.chomp
num_i = num.to_i
list.push num_i
end
list.pop
list = list.sort
puts list.join(', ')
