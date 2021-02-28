############## Build on 21 Jan 2021
######### Ruby version ruby 2.7.2p137

def rotate_by_one list
  # pop removes last element from an array and returns that element
  #last = list.pop
  # unshift appends constant given to the first element of the list..
  # ... while pushing other elemnents upwards with respect to index
  return list.unshift(list.pop)
end

# ask for user input
puts "Enter list of numbers each separated by comma:"
# converts input to an array
list = gets.chomp.split(',').map(&:to_i)

# calls the func
p rotate_by_one(list)
