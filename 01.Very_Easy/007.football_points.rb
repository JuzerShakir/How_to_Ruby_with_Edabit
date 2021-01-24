########
########## Ruby version ruby 2.7.2p137
=begin
Create a function that takes the number of wins, draws and losses and calculates
the number of points a football team has obtained so far.

-----wins get 3 points
-----draws get 1 point
-----losses get 0 points
=end
########

# func to calc
def points wins, draws, losses
	# calc winning points since each match wins is equal to 3 points
	win_points = wins * 3
	# since draw match points are 1 and lose match points are 0
	total_points = win_points + draws
	return total_points
end
# asks the user to enter points in x,y,z form
puts "Enter number of wins, draws and losses respectively in a form of x,y,z: "

# the input is split by ',' and converted to int
wins, draws, losses = gets.chomp.split(',').map(&:to_i)

puts points wins, draws, losses
