######### Build on 05.12.2020
=begin
Create a function which simplifies a given fraction into its simplest ratio. 
Return the fraction as a string.

simplify_frac("2/4") ➞ "1/2"

simplify_frac("15/25") ➞ "3/5"

simplify_frac("4/9") ➞ "4/9"

Fractions are given as strings.
Return the same fraction if it is already in its simplified ratio (see example #3).

=end

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
