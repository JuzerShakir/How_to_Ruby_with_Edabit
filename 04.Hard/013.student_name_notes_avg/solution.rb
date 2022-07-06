def avg(arr)
    arr.map { |o|
        Hash[name: o[:name], avgNote: o[:notes]
        .reduce(0) { |acc, e|  acc += e.to_f/o[:notes].length }]
    }
end