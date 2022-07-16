def alph_num(str)
    h = ('A'..'Z').zip(0..25).to_h
    str.chars.map { |c| h[c] }.join(' ')
end