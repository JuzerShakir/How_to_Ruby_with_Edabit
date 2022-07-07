# ########## ? Build on 07.07.2022
# ########## ? Ruby version ruby 3.1.2

def test_jackpot(arr)
	if arr.uniq.count == 1 then true else false end
end

# ------------------------------------------------------  #

# ########## ? Build on 03.12.2020
# ########## ? Ruby version ruby 2.7.2p137

# def jackpot a
# 	# uniq method returns 1 element of its all other identical elements
# 	# since we want to know if all elements are same, we give uniq, it will return..
# 	#..1 element if all elements are identical of an array
# 	jack = a.uniq

# 	if jack.length == 1 then true else false end
# end

# puts "Enter an array, each element separated by comma: "
# a = gets.chomp.split(',')

# p jackpot a
