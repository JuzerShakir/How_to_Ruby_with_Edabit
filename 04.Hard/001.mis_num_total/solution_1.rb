######### Build on 21 Jan 2021
######### Ruby version ruby 2.7.2p137

def sum_missing_nums(list)
  # extract min and max value from user input and make a list with that range
  seq_list = (list.min..list.max).to_a

  # now we want to know whether the input array really had any missing numbers
  # the only way to know that is by seeing if both arrays are same
  # since == operator looks for corresponding element values and
  # seq_list is sorted in ascd order we give input list sort method
  if seq_list == list.sort
    # the input had no missing value, hence end program
    return "No Missing Numbers (i.e. all numbers in [#{list.min}, #{list.max}] are present in the list)"
  end

  # now we substract the lists, and we get the missing nums of that range that user didnt enter
  missing_list = seq_list - list

  # initializing total
  total = 0
  # loops through and adds each number
  missing_list.each do | num | total += num end

  return total
end

#asks user for input
puts "Enter list of numbers each separated by comma:"
# converts input str to int
list = gets.chomp.split(',').map(&:to_i)

# calls the func
puts sum_missing_nums(list)
