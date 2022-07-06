def chosen_wine(arr)
    w = arr.min_by(2) { |o| o[:price]}.pop
    w[:name] if w
end