def scale_tip(arr)
    #* all numbers will be grouped in true
    chunked = arr.chunk { |e| e != "I"}

    #* only select the chunk for which it returned true
    left, right = chunked.select { |e| e.first }
                    #* select an array which contains the weights
                    .flat_map { |e| e.grep(Array) }
                    #* sum all of the values
                    .map(&:sum)

    if left < right
        return 'right'
    elsif left > right
        return 'left'
    else
        return 'balanced'
    end
end