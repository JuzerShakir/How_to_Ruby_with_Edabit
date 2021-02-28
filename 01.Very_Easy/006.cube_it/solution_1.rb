########
########## Ruby version ruby 2.7.2p137

def cubes num
	cube = num ** 3
	return "Cube of #{num} is #{cube}"
end

print "Enter a number to cube it: "
num = gets.chomp.to_i

puts cubes(num)
