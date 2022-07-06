def swap_h(a1, a2, swap)
    if swap then a2.zip(a1).to_h else a1.zip(a2).to_h end
end