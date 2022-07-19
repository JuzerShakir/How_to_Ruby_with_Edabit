def subset(a, b)
    # a.all? { |e| b.include?(e) }
    a.intersection(b) == a
end