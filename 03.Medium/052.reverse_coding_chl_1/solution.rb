def rev(str)
    a = str.chars.grep(/\D/)
    n = str.chars.grep(/\d+/).map(&:to_i)
    a.map.with_index { |c, i| c.split * n[i] }.join
end