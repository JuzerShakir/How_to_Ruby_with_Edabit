########## Built on 30.11.2020
########## Ruby version ruby 2.7.2p137

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

