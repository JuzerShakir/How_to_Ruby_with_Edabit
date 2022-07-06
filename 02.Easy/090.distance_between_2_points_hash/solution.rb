def get_distance(h1, h2)
    Math.sqrt((h2["x"] - h1["x"])**2 + (h2["y"] - h1["y"])**2).round(3)
end