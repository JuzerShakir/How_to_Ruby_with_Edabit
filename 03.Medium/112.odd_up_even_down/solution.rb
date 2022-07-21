def even_odd_transform(arr, m)
    arr.map { |e| e.odd? ? e + (2*m) : e + (-2*m) }
end