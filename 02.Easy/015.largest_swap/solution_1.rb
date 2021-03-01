#########
######### Ruby version ruby 2.7.2p137

# => though the problem is for 2 digits, I have solved for any number of digits

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
