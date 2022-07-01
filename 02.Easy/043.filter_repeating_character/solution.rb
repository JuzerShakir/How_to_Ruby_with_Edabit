def identical_filter(arr)
    arr.select { | w |
        w.squeeze.length == 1
    }
end