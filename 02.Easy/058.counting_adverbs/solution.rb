def count_adverbs(str)
    str.scan(/\S(ly)\W/).count
end