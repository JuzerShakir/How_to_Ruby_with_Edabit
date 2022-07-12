def sum_neg(arr)
    return [] if arr.empty?
    [arr.count(&:positive?), arr.select(&:negative?).reduce(:+)]
end