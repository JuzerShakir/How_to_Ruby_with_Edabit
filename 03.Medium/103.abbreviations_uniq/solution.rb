def unique_abbrev(abrvs, words)
    words.all? { |word|
        abrvs.one? { |abrv| word.start_with?(abrv) }
    }
end