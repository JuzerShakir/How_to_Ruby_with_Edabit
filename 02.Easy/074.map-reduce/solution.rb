def magnitude(arr)
    if arr.empty? then 0 else Math.sqrt(arr.map{ |n| n**2 }.reduce(:+)) end
end