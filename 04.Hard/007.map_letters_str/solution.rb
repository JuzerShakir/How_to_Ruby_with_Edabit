def map_letters(str)
    hash = Hash.new { | h, k | h[k] = [] }
    str.split('').each.with_index { |c, i| hash[c.downcase] << i }
    hash
end