# we use DateTime library for this
require 'date'

def hours_passed time1, time2
	# since difference of DateTime returns value in days, we convert in hours
	# and convert to int for nice whole num
	hours = ((time2 - time1) * 24).to_i

	return "{#hours} hours"
end

# we ask user for start time
puts "Enter the starting time: "
hour1, min1, sec1 = gets.chomp.split(':')
# defining time variable to get current time
time = Time.new
# DateTime accepts integer values only, converting user input str to int
time1 = DateTime.new(time.year, time.month, time.day, hour1.to_i, min1.to_i, sec1.to_i)

puts "Enter the ending time: "
hour2, min2, sec2 = gets.chomp.split(':')
time2 = DateTime.new(time.year, time.month, time.day, hour2.to_i, min2.to_i, sec2.to_i)

puts hours_passed time1, time2

