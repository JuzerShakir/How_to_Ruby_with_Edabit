def is_slidey(nums)
    nums.digits.reverse.slice_when { |c, n| n != c.next && n != c.pred }.to_a.length == 1
end