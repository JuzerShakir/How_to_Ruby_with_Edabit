def unique_in_order(str)
    if str.is_a? String then str.squeeze.chars
    else str.chunk_while { |a, b| b == a}.map(&:shift)
    end
end