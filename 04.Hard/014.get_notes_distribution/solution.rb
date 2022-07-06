def get_notes_distribution(arr)
    hash = {}
    arr.each { |o| o[:notes].tally(hash)}
    hash.keep_if { |k, v| (1..5).include?(k) }
end