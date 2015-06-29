hours_in_a_year = 365.2425 * 24
puts 'hours in a year'
puts hours_in_a_year

puts '----------------'

minutes_in_a_decade = 10 * 365 * 24 * 60 #years * days * hours * minutes
puts 'minutes in a decade'
puts minutes_in_a_decade

puts '----------------'

birthday = Time.mktime(1981, 03, 28,06,05,00)
now = Time.now
puts 'number of seconds alive'
puts now - birthday

puts '----------------'

years_alive = 90
days_in_a_year = 365.2425
chocs_per_day = 2
all_the_chocs = years_alive * days_in_a_year * chocs_per_day
puts 'how many chocs will I eat?'
puts all_the_chocs

puts '----------------'

puts 'how old is chris?'
puts 1204000000 / 60 / 60 / 24 / 365

puts '----------------'


