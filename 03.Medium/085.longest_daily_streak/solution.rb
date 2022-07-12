def daily_streak(arr)
    arr.chunk_while { |c, n| c == n }
        .map { |a| if a.all? then a.fill(1).sum else 0 end }.max
end