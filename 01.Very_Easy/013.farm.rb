########
######### Ruby version ruby 2.7.2p137
=begin
In this challenge, a farmer is asking you to tell him how many legs can be counted
among all his animals. The farmer breeds three species:

    chickens = 2 legs
    cows = 4 legs
    pigs = 4 legs

The farmer has counted his animals and he gives you a subtotal for each species.
You have to implement a function that returns the total number of legs of all the animals
=end
########

def total chickens, cows, pigs
	legs = (chickens * 2) + (cows * 4) + (pigs * 4)
	return legs
end

print "Enter the no. of chickens, cows and pigs you have respectively separated by ',' each: "
chickens, cows, pigs = gets.chop.split(',').map(&:to_i)

puts total chickens, cows, pigs
