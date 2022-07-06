customers = {
    "Batman": [22, 30, 11, 17, 15, 52, 27, 12],
    "Spider-Man": [5, 17, 30, 33, 40, 22, 26, 10, 11, 45]
  }

def pizza_points(h, min_ord, min_prc)
    h.filter_map { |k, v| k.to_s if v.count{ |e| e > min_prc } > min_ord }
end