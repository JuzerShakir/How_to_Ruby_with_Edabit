def checkout(arr)
    arr.reduce(0) { |acc, o|
        acc += o[:prc] * o[:qty] +
                ((o[:taxable] && o[:prc] * 0.06) || 0)
    }
end