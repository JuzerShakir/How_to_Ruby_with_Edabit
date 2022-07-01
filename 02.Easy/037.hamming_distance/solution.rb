def hamming_distance(str1, str2)
    total = 0
    str1.each_char.with_index { | c1, i |
        c2 = str2.byteslice(i)
        total +=  (c2 <=> c1).abs
    }
    return total
end