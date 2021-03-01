########## Build on 05.12.2020
######### Ruby version ruby 2.7.2p137

def email id
	# with regex, you can do in 1 line!
	if id.match(/\S+\@\w+.com/) then true else false end
end

puts 'Enter an email address: '
id = gets.chomp

p email id
