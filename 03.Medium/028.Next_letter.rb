########### Build on 07.12.2020
######### Ruby version ruby 2.7.2p137
=begin
Write a function that changes every letter to the next letter:

    "a" becomes "b"
    "b" becomes "c"
    "d" becomes "e"
    and so on ...

move("hello") ➞ "ifmmp"

move("bye") ➞ "czf"

move("welcome") ➞ "xfmdpnf"
There will be no z's in the tests.
=end
###########

def move str
	# will hold result
	result = ""
	# iterates through each char of a string through chars..
	# succ gives the next successor alphabet
	# does not increament the z char
	result = str.chars {|char| if char != 'z' then print char.succ end}
	return result
end

puts "Enter a string: "
str = gets.chomp
# downcase input
str.downcase!

move str
#moves the prompt to next line in cmd
puts
