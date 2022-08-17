def leader(arr)
    l = arr[arr.find_index(arr.max)..]
    l.select.with_index{ |e, i| l[i..].max == e }
end