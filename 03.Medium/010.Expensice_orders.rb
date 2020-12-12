########## Build on 01.12.2020
=begin
Write a function that has two parameters: orders and cost. 
Return any orders that are greater than the cost.

	expensive_orders({ "a" => 3000, "b" => 200, "c" => 1050 }, 1000)
➞ { "a" => 3000, "c" => 1050 }

	expensive_orders({ "Gucci Fur" => 24600, "Teak Dining Table" => 3200, "Louis Vutton Bag" => 5550, "Dolce Gabana Heels" => 4000 }, 20000)
➞ { "Gucci Fur" => 24600 }

	expensive_orders({ "Deluxe Burger" => 35, "Icecream Shake" => 4, "Fries" => 5 }, 40)
➞ {}
=end
########## 

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
