def shortest_distance(str)
    c = str.split(',').map!(&:to_i)
    return Math.hypot(c[2] - c[0], c[3] - c[1]).round(2)
end