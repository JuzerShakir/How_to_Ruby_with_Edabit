require 'prime'
def fat_prime(*arr)
    s, e = arr.sort { |c, n| c <=> n }
    (s..e).select(&:prime?).max
end