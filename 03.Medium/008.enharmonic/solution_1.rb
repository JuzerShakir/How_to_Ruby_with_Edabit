########## Build on 01.12.2020
########## Ruby version ruby 2.7.2p137

def get_equivalent note
	# input of user is either ending with '#' or 'b'
	# whenever ending char is '#' return value will increase first char of string...
	#...and append b to it
	if note.end_with? "#"
		# this gets first char of input
		c = note.chr
		# since output chars range from A-G we specify for 'G' input
		# ord converts char to int,..
		#..increaments by 1..
		# ..chr converts that int to str
		if c == 'G' then "Ab" else (c.ord + 1).chr + "b" end

	#whenever ending char is 'b' return value will decrease first char of string...
	#...and append # to it
	elsif note.end_with? "b"
		c = note.chr
		# since output chars range from A-G we specify for 'A' input
		if c == 'A' then "G#" else (c.ord - 1).chr + "#" end
	end
end

print "Enter a musical note: "
note = gets.chomp

puts get_equivalent note


=begin 		#reference links
ord = https://apidock.com/ruby/v1_9_3_392/String/ord
