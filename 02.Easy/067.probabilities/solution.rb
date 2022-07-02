def probability(arr, n)
    ((arr.count { | num |  num >= n } / arr.length.to_f) * 100).round(1)
end