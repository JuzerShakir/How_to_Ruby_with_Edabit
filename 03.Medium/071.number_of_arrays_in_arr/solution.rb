def num_of_subarrays(arrs)
    arrs.count { |e| e.is_a? Array}
end
