def to_boolean_array(str)
    zero_one = []
    [1,0].cycle(13) { |e| zero_one << e }
    bool_hash = ("a".."z").zip(zero_one).to_h

    str.split("").map { |c| bool_hash[c] == 1 }
end