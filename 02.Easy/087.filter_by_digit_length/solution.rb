def filter_digit_length(arr, l)
    arr.select{ |e| e.to_s.length == l }
end