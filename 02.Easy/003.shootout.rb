########
=begin
Wild Roger is participating in a Western Showdown, meaning he has to draw 
(pull out and shoot) his gun faster than his opponent in a gun standoff.

Given two strings,p1 and p2, return which person drew their gun the fastest. 
If both are drawn at the same time, return "tie".

		p1"   Bang!        "
		p2"        Bang!   "
				p1
				
		p1"   		Bang!  "
		p2"        Bang!   "
				p2
				
		p1"   Bang!        "
		p2"   Bang!  	   "
				tie
=end
########
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

puts "Enter 'Bang!': "
p1 = gets.chomp
p2 = gets.chomp

puts showdown p1, p2
