require 'prime'

def prime_gap (gap, start, finish)
    prime_arr = (start..finish).select { | num | num.prime? }
    ans = nil

    prime_arr.each_with_index do | num, i |
        next_num = prime_arr[i+1]
        if next_num.nil? || !ans.nil?
            break
        elsif next_num - num  == gap
            ans = [num, next_num]
        end
    end
    return ans
end

gap, start, finish = gets.chomp.split(',').map(&:to_i)
p prime_gap(gap, start, finish)