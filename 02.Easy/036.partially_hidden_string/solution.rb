def partially_hide(phrase)
    # return phrase.split(' ').map { | w | w.gsub(w.slice(1..-2), '-'*(w.length - 2)) }.join(' ')
    return phrase.gsub(/\B\w\B/, '-')
end