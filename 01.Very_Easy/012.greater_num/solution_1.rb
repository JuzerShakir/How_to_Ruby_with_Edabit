#########
######### Ruby version ruby 2.7.2p137

def max_num n1, n2
	if n1 > n2
		return n1
	else
		return n2
	end
end

puts "Enter 2 numbers separated by a comma: "
n1, n2 = gets.chomp.split(',').map(&:to_i)

puts max_num n1, n2
