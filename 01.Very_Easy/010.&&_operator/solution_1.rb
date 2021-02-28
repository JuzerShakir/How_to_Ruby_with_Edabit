########
########## Ruby version ruby 2.7.2p137

def logic a, b
	if a == 'true' && b == 'true'
		return true
	else
		return false
	end
end

print "Enter either true or false for a and b respectively separated by ',': "
a, b = gets.chomp.split(',')

p logic a, b
