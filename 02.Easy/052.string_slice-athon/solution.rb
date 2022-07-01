txt = "abcdefghijklmnopqrstuvwxyz"

def challenge1(s)
    s.slice(0..4)
end

def challenge2(s)
    s.slice(-5..-1)
end

def challenge3(s)
    s.reverse
end

def challenge4(s)
    s.reverse.slice(-6, 6)
end

def challenge5(s)
    s.slice(-7..-1).chars.select.with_index{ |c, i| (i+1).odd? }.join
end