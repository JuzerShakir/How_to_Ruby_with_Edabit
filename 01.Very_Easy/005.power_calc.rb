#######
=begin
Create a function that takes voltage and current and returns the calculated power.
=end
#######

def power volt, cur
	return volt * cur
end

puts "Enter the voltage and current as in volt, cur form: "

#volt = gets.chop.to_i
#cur = gets.chop.to_i

# chomp eliminates newline character, split helps us take multple inputs separated by..
# .... a comma and map to convert str input to int
volt, cur = gets.chomp.split(',').map(&:to_i)

# calls func and outputs result
puts power volt, cur
