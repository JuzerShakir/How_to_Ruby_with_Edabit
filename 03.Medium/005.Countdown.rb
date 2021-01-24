########### Built on 01.12.2020
######### Ruby version ruby 2.7.2p137
=begin
Create a function where given the number n to count down from, and some words txt,
return a countdown sequence as a string leading up to the words at the end.

Put a full stop after each number and uppercase and add an exclamation mark to the word.
See the examples below for clarification!

	countdown(10, "Blast Off") ➞ "10. 9. 8. 7. 6. 5. 4. 3. 2. 1. BLAST OFF!"

	countdown(3, "go") ➞ "3. 2. 1. GO!"

	countdown(5, "FIRE") ➞ "5. 4. 3. 2. 1. FIRE!"
=end
###########

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
