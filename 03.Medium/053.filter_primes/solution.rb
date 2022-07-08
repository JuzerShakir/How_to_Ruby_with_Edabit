require 'prime'

def filter_prime(arr)
    arr.select { |n| n.prime? }
end