def is_kaprekar(n)
    sqr = n.abs2.to_s
    sqr[...sqr.length / 2].to_i + sqr[sqr.length / 2..].to_i == n
end