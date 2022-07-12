def increment_to_top(arr)
    max = arr.max
    arr.map {|e| max - e }.reduce(:+)
end