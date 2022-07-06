def to_hash(arr)
    arr.map { |e| Hash[e, e.ord] }
end