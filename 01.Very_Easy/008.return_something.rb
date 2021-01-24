#######
########## Ruby version ruby 2.7.2p137
=begin
Write a function that returns the
string "something" joined with a space " "
and the given argument a.
=end
#######

def something str
	return "something #{str}"
end

print "Enter a string: "
str = gets.chomp

puts something str
