######## Build on 03.12.2020
######## Ruby version ruby 2.7.2p137
=begin
The pattern here is that there are 2 inputs,
First being an array =A and
second being an int = n

If n is greater than x element of A then the element of A is printed as is. See ex 4 & 5

If n isnt greater than then its either less than or equal to an element of an array.
For those, we perform this calculation A[i]%n, see ex 3 & 6 to easily understand
=end
#########

def challenge a, n
	# loops through each element of an array
	begin
		a.length.times do |i|
			if n > a[i]
				# loops through next element
				next

			else
				remainder = a[i] % n
				# remainder value is given in place of original num
				a[i] = remainder
			end
		end
	rescue
		puts "Integer values only"
	end
	return a
end

puts 'Enter an array of numbers, each separated by comma: '
a = gets.chomp.split(',').map(&:to_i)

print 'Enter a number for comparison and calculations: '
n = gets.chomp.to_i

p challenge a, n
