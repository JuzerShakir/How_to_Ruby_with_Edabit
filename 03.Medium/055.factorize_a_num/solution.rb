def factorize(n)
    (1..n).select { |e| n % e == 0 }
end