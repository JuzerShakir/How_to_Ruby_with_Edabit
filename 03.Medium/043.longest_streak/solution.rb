require 'date'

# def longest_streak(arr)
#     counts = []
#     count = 1
#     dates = arr.map{ |o| Date.parse(o[:date])}
#     dates.each.with_index { |d, i|
#         if d.succ == dates.at(i+1)
#             count += 1
#         else
#             counts << count
#             count = 1
#         end
#     }
#     counts.max
# end

def longest_streak(a)
    a.map { |o| Date.parse(o[:date]) }
        .slice_when { |c, n| c.succ != n }
        .map { |e| e.length }
        .max
end