def win_round(me, oppo)
    def max_2(arr); arr.max(2).join.to_i; end
    max_2(me) > max_2(oppo)
end