def leaderboards(arr)
    arr.sort { |c, n| ( n[:reputation]*2 + n[:score])  <=>  (c[:reputation]*2 + c[:score] )}
end