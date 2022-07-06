def possible_path(arr)
    path_blueprint = {1 => [2], 2 => ["H", 1], "H" => [2,4], 4 => [3, "H"], 3 => [4] }

    arr.map.with_index { |e, i| path_blueprint[e].include?(arr[i+1]) }.slice(...-1).all?
end