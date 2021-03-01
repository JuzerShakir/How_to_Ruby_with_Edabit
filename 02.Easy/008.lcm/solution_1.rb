#########
######### Ruby version ruby 2.7.2p137

def lcm num1, num2
	# int has a func of lcm which does the job!
	return num1.lcm(num2)
end

puts "Enter 2 numbers separated by comma: "
num1, num2 = gets.chomp.split(',').map(&:to_i)

puts lcm num1, num2
