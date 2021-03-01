########## Build on 05.12.2020
########## Ruby version ruby 2.7.2p137
#
def last_dig a, b, c
	# after we have taken last char from str we convert to int for multiply except for c
	la = a[-1].to_i
	lb = b[-1].to_i
	lc = c[-1]

	# multiplies a and b converts to str
	lalb = (la * lb).to_s

	#checks if last char is same as last char of c
	if lalb[-1] == lc then true else false end
end

puts 'Enter 3 numbers each separated by comma: '
# will inputs as str
a,b,c = gets.chomp.split(',')

p last_dig a, b, c
