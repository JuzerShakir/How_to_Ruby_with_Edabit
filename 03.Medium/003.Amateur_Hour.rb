######### uilt on 30.11.2020
=begin
Create a function that takes time1 and time2 and return how many hours have passed 
between the two times.

		hours_passed("3:00 AM", "9:00 AM") ➞ "6 hours"

		hours_passed("2:00 PM", "4:00 PM") ➞ "2 hours"

time1 will always be the starting time and time2 the ending time.
Return "no time passed" if time1 is equal to time2.

=end
#########

def hours_passed time_1, time_2
	# time_local var return value in secs
	sec = time_2 - time_1
	# sec into mins
	mins = sec / 60
	# mins to hours, returns nice whole num	
	hours = (mins / 60).round
	
	return "#{hours} hours."
end

puts "Enter the starting time: "
hour1, min1, sec1 = gets.chomp.split(':')

puts "Enter the ending time: "
hour2, min2, sec2 = gets.chomp.split(':')

time = Time.new
# inputing user values to generate timestamp variable
time_1 = Time.local(time.year, time.month, time.day, hour1, min1, sec1)
time_2 = Time.local(time.year, time.month, time.day, hour2, min2, sec2)

puts hours_passed time_1, time_2

