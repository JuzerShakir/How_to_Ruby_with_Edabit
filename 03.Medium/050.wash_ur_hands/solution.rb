def wash_hands(n, nm)
    m, s = *(n * 21 * 30 * nm).divmod(60)
    return "#{m} minutes and #{s} seconds."
end

p wash_hands(8, 7)
p wash_hands(0, 0)
p wash_hands(7, 9)