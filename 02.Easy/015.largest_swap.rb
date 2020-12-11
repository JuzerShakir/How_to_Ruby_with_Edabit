#########
=begin
Write a function that takes a two-digit number and determines if it's the largest of 
two possible digit swaps.

largest_swap(27) ➞ false

largest_swap(43) ➞ true

If 27 is our input, we should return false because swapping the digits gives us 72, 
and 72 > 27. On the other hand, swapping 43 gives us 34, and 43 > 34.

Numbers with two identical digits (third example) should yield true (you can't do better).

=end
#########
# though the problem is for 2 digits, I have solved for any number of digits

def swap num
	# sorts the num in ascending order and reverse makes it in descending order
	sorted_num = num.sort.reverse
	
	# since its in array form we need to convert in int
	# joins the numbers and converts them to int
	num = num.join.to_i
	sorted_num = sorted_num.join.to_i
	
	# if input num by user is > than sorted num, returns true for largest possible num
	if num >= sorted_num
		return true
	else
		return false
	end
end

print "Enter any number: "
num = gets.chomp.split('').map(&:to_i)

p swap num
