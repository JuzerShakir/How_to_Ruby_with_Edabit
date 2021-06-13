######### Build on 07 Jun 2021
########## Ruby version ruby 2.7.2p137

def fibonacci_sequence
  # initialize fib array
  fib_arr = [0, 1]
  
  loop do 
    # adds second last and last number in the list
    num = fib_arr[-2] + fib_arr[-1]
    # breaks loop if num is greater than 255
    break if num > 255 
    # appends the num to list if num is less than 255
    fib_arr << num
  end

  # returns value
  return fib_arr
end
