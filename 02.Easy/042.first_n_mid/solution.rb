def stmid(str)
    str.split.map { |w|
        l = w.length
        if l.odd? then w.slice(l/ 2) else w.chr end
    }.join
end