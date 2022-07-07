########## ? Build on 07.07.2022
########## ? Ruby version ruby 3.1.2

def return_only_integer(arr)
	arr.grep(Integer)
end


# ---------------------------------------- #
########## ? Build on 02.12.2020
########## ? Ruby version ruby 2.7.2p137

# def intOnly arr
# 	#\D extracts element which is not a whole number, such as str, float
# 	# select loops through each element of array
# 	#returns an array of elements which are not int
# 	unreq = arr.select { |ele| ele.match(/\D/)}

# 	#now we have an array of element which we dont require,....
# 	#..we substract this from original array returning elements that are int we need
# 	# new_arr have all element as whole num
# 	new_arr = arr - unreq

# 	# since all elements are str we convert to int
# 	return new_arr.map(&:to_i)
# end

# puts "Enter an array of elements each separated by comma without the braces: "
# arr = gets.chomp.split(',')

# p intOnly arr

