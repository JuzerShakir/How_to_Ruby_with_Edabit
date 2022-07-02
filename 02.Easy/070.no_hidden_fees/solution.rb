def has_hidden_fees(arr, t)
    arr.map{ |n| n[/\d+/].to_i }.sum != t[/\d+/].to_i
end