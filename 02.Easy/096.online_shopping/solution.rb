def free_shipping(h)
    if h.values.reduce(:+) > 50.00 then true else false end
end