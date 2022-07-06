def longest_word(str)
    str.split(' ').max {|a,b| a.size<=>b.size}
end