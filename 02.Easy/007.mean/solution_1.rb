#########
######### Ruby version ruby 2.7.2p137

def mean num
	#length of number
	itr = num.length
	total = 0

	itr.times do |n|
		total += num[n]
	end
	# mean
	return total/itr
end

puts "Enter any 1 number: "
# this will give an array where each element is a single num converted to int
num = gets.chomp.split('').map(&:to_i)

p mean num
