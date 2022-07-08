def find_the_difference(s, t)
    hash = Hash.new(0)
    t.chars.each { |c|
        if s.include?(c) then hash[c] += 1 else hash.store(c, 0) end
    }
    hash.key(0) || hash.key(2)
end