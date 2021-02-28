#######
########## Ruby version ruby 2.7.2p137

def something str
	return "something #{str}"
end

print "Enter a string: "
str = gets.chomp

puts something str
