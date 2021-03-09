########
######## Ruby version ruby 2.7.2p137
# => User can cheat in this program by inputing only 'B'
# first like 'B.. ...Bang!' since it only checks index of single 'B' char.

def showdown p1, p2
	# checks if the input contains 'Bang',
	#if it does contain then true boolean is returned
	p1.include?("Bang!")
		# since we know user has typed Bang, we capture the index of B
		p1_idx = p1.index("B")
	# same logic above
	p2.include?("Bang!")
		p2_idx = p2.index("B")

	# lower the index, faster the gun was drawn and shot, hence lower number wins
	if p1_idx < p2_idx then "p1" elsif p1_idx > p2_idx then "p2" else "tie" end
end

# expect user to input 'Bang!' or will throw NoMethodError in if statement
puts "Enter 'Bang!': "
p1 = gets.chomp
p2 = gets.chomp

puts showdown p1, p2
