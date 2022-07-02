def filter_state_names(arr, type)
    if type == "abb" then arr.select{ |n| n.upcase == n } else arr.reject{ |n| n.upcase == n } end
end