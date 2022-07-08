def censor(str)
    str.split.map { |w|
        if w.length > 4 then w.replace("*" * w.length) else w end
        }.join(' ')
end