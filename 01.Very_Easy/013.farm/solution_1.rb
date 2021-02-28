########
######### Ruby version ruby 2.7.2p137

def total chickens, cows, pigs
	legs = (chickens * 2) + (cows * 4) + (pigs * 4)
	return legs
end

print "Enter the no. of chickens, cows and pigs you have respectively separated by ',' each: "
chickens, cows, pigs = gets.chop.split(',').map(&:to_i)

puts total chickens, cows, pigs
