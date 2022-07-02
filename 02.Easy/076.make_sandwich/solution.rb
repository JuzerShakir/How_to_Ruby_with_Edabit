def make_sandwich(i, f)
    index_f = []
    i.each_with_index { |e, i| index_f.push(i, i+1) if e == f }
    index_f.reverse.each{ |n| i.insert(n, 'bread')}
end