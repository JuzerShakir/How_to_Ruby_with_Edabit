def gimme_the_letters(range)
    a, b = *range.split('-')
    a.upto(b).map { |c| c }.join
end