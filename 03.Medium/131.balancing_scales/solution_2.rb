def scale_tip(arr)
    left,_, right = *arr.join(' ').partition('I')

    def sum_it_up(arr)
        arr.split(' ').map(&:to_i).sum
    end

    left_sum = sum_it_up(left)
    right_sum = sum_it_up(right)

    if left_sum < right_sum
        return 'right'
    elsif left_sum > right_sum
        return 'left'
    else
        return 'balanced'
    end
end