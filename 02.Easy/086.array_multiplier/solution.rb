def multiply(arr)
    arr.map { |e| Array.new(arr.length, e) }
end