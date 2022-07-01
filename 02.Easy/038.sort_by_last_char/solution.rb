def sort_by_last(string)
    string.split.sort_by { | word | word[-1] }.join(' ')
end