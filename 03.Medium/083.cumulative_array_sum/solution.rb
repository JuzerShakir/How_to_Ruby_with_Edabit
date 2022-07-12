def cumulative_sum(arr)
    arr.map.with_index { |_,i|  arr[..i].sum }
end