def differs(h1, h2)
    h1.filter_map{ | k, v | k.to_s if h1[k] != h2[k] }
end