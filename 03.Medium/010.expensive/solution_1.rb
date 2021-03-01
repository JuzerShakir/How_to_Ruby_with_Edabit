########## Build on 01.12.2020
########## Ruby version ruby 2.7.2p137

def expensive_orders orders_hash, cost
	#returns a new hash consisting of entries for which price is greater than cost
	return orders_hash.select { |k, v| v > cost }
end

# we ask user how many items he wants to give and loop that many times to ask item and price
print "No. of items you want to enter: "
i = gets.chomp.to_i

# declaring hash
orders_hash = {}

i.times do
	print "Enter the name of item: "
	item = gets.chomp
	print "Enter the price of item: "
	price = gets.chomp.to_i

	# appending new values to hash
	orders_hash[item] = price
	# outputs an empty line between each loop
	puts
end

puts "Enter cost: "
cost = gets.chomp.to_i

puts expensive_orders orders_hash, cost
