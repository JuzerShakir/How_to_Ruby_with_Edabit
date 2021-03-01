########## Build on 05.12.2020
########## Ruby version ruby 2.7.2p137

def simplify a, b
	# for simplified fraction we need to know both nums highest common divisor or GCD
	gcd = a.gcd(b)

	# now we divide the num by gcd to get smallest ratio and converting to str
	num1 = (a / gcd).to_s
	num2 = (b / gcd).to_s

	# output
	puts "#{num1}/#{num2}"
end

puts "Enter a fraction to get in simplest form a/b: "
a, b = gets.chomp.split('/').map(&:to_i)

simplify a, b
