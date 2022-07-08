def no_perms_digits(l)
    Array.new(l, 0).permutation(l).to_a.count.to_s.length
end