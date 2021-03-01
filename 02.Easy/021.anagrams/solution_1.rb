###########
########### Ruby version ruby 2.7.2p137

def angrm s1, s2
	# chars method returns an array of characters
	# sort method is used on that array to sort alphabetically a-z
	# sort method sorts capital chars first then small letters
	# since we want it to sort insensitively, we give casecmp
	# all chars are now sorted alphabetically regardless of capital or non-capital
	# join method joins all elements of that array returning a string
	s1_sort = s1.chars.sort(&:casecmp).join
	s2_sort = s2.chars.sort(&:casecmp).join

	# since we know their can be characters in uppercase and lowercase and ...
	# ...we want to match it insensitively so we give downcase method....
	# ... which will lowercase all chars of a string so that we match both strings..
	#.. and get proper results
	if s1_sort.downcase == s2_sort.downcase then true else false end
end

puts "Enter names each separated by comma: "
s1, s2 = gets.chomp.split(',')

puts angrm s1, s2
#(&:casecmp)
