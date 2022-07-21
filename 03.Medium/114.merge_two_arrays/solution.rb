def merge_arrays(a1, a2)
    # a1_u = a1.push(*Array.new((a1.length-a2.length).abs))
    # a1_u = a1 + Array.new((a1.length-a2.length).abs)
    a1_u = a1.concat(Array.new((a1.length-a2.length).abs))
    a1_u.zip(a2).flatten.compact
end