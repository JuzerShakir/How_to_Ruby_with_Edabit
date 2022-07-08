def count_identical_arrays(*arrs)
    count = arrs.uniq.map { |a| arrs.count(a) }.max
    if count > 1 then count else 0 end
end