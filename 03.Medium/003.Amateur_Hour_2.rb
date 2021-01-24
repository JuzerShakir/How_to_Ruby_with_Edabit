######### Built on 30.11.2020
######### Ruby version ruby 2.7.2p137
=begin
Create a function that takes time1 and time2 and return how many hours have passed
between the two times.

		hours_passed("3:00 AM", "9:00 AM") ➞ "6 hours"

		hours_passed("2:00 PM", "4:00 PM") ➞ "2 hours"

time1 will always be the starting time and time2 the ending time.
Return "no time passed" if time1 is equal to time2.

=end
#########
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

