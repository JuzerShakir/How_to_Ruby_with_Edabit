########### Built on 01.12.2020
########## Ruby version ruby 2.7.2p137

def countdown n, s
	# preparing string for ouput
	s = s.upcase + "!"

	# loops in reverse, using print to show countdown in same line
	n.downto(1) { |i| print "#{i}. " }
	# using print so it shows the output in same line as the loop above
	print s
end

puts "Enter a countdown num: "
n = gets.chomp.to_i
# if a user enters a negative num then program aborts giving an error message in " "
if n <= 0 then abort "PLease enter a positive countdown num!!" end

puts "Enter a string you want us to show at the end of countdown: "
s = gets.chomp

countdown n, s
