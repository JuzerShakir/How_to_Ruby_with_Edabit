#########
=begin
Create a function that takes a division equation d and checks if it will return a 
whole number without decimals after dividing.

Return "invalid" if division by zero.
=end
#########

def div n, m
	# first checks if divider is not 0 and then checks if remainder is 0 then true
	if m == 0 then "invalid" elsif n % m == 0 then true else false end
end

puts "Enter division ina form of 'x/y': "
n, m = gets.chomp.split('/').map(&:to_i)

puts div n, m
