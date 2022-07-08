def upload_count(arr, m)
    arr.count { |e| e.match?(m) }
end