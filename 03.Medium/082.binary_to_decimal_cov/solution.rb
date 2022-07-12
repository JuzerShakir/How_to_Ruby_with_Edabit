def binary_to_decimal(arr)
    arr.reverse.map.with_index { |e, i| e*2**i }.sum
end