########
######### Ruby version ruby 2.7.2p137

# function which takes input of 2 players
def RPS p1, p2
	# empty array which will hold input of players
	players = []

	players << p1
	players << p2

	# checking for same input by both players or draw
	if players[0] == players[1]
		return "It's a draw!"

	# checks if any player has chosen rock
	elsif players.include?("rock")
		# checks if any opposite player has chosen scissors
		if players.include?("scissors")
			# we know that rock beats scissors so all we need to know is which player chose rock and thats the winner
			# we take the index and add 1 to it.
			i = players.index("rock") + 1
			puts "The winner is p#{i}."

		# this will execute if 1 player has chosen rock and other paper
		else
			#since paper wins over rock we see which player chose paper
			i = players.index("paper") + 1
			puts "The winner is p#{i}."
		end
	# checks if any player has chosen scissors
	elsif players.include?("scissors")
		# we sure can say that other player has not chosen rock but paper
		# since scissors beats paper, we see which player chose scissors
		i = players.index("scissors") + 1
		puts "The winner is p#{i}."
	end
end

puts "Player 1, enter your choice: "
p1 = gets.chomp
puts "Player 2, enter your choice: "
p2 = gets.chomp

#lowercase all the characters of input for easy operations
p1.downcase!
p2.downcase!

# an array of what input is accepted by both players
output = ['rock', 'paper', 'scissors']
# this will check if both players have typed correct input otherwise invalid input
if output.include?(p1) and output.include?(p2) then puts RPS p1, p2 else puts "Invalid Input!" end
