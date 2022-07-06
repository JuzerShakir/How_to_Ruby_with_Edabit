def maximum_score(arr)
    arr.reduce(0){ |a, e| a + e["score"]}
end