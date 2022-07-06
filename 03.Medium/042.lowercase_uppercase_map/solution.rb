def mapping(arr)
    arr.map { |e| [e, e.upcase] }.to_h
end