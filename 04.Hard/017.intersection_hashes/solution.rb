def intersection(h1, h2)
    i_k = h1.keys.intersection(h2.keys)
    [h1.slice(*i_k), h2.slice(*i_k)]
end