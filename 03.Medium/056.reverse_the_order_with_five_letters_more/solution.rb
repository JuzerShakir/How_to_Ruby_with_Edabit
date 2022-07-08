def reverse(str)
    str.split.map { |w| if w.length >= 5 then w.reverse else w end }.join(' ')
end