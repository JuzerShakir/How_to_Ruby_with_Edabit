########## Build on 01.12.2020
=begin
In music, notes can be written out in multiple ways (especially for notes on the 
black keys). Although these notes are spelled out differently, they still are the 
same note physically.

https://edabit-challenges.s3.amazonaws.com/23KQwnog7Q1jpM7UL4uccJvWqNFx53qoBmAEuqMaGU7hGPNut4YA52MMaZzN7NZesom1bDvb5bT3L2TtQkj5W2wJdwxPTGz.png

Given a musical note, create a function that returns its enharmonic equivalent. 
The examples below should make this clear.

	get_equivalent("D#") ➞ "Eb"

	get_equivalent("Gb") ➞ "F#"

	get_equivalent("Bb") ➞"A#"
=end
##########

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
