######## Build on 03.12.2020
=begin

This is a reverse coding challenge. Normally you're given explicit directions with how 
to create a function. Here, you must generate your own function to satisfy the 
relationship between the inputs and outputs.

Your task is to create a function that, when fed the inputs below, produce the 
sample outputs shown.

[5, 7, 8, 2, 1], 2 ➞ 			[1, 1, 0, 0, 1]

[9, 8, 16, 47], 4 ➞ 			[1, 0, 0, 3]

[17, 11, 99, 55, 23, 1], 5 ➞ 	[2, 1, 4, 0, 3, 1]

[6, 1], 7 ➞ 					[6, 1]

[3, 2, 9], 3 ➞ 					[0, 2, 0]

[48, 22, 0, 19, 33, 100], 10 ➞ 	[8, 2, 0, 9, 3, 0]

=end
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
