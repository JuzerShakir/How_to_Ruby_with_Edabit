def tree(n)
    arr = Array.new(n) { |i| "#" * (((i+1)*2)-1) }
    arr.map { |e| e.center(arr.last.length) }.join("\n")
end