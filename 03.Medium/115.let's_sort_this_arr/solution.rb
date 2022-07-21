def asc_des_none(arr, o)
    arr.max(arr.size) { |c, n|
        if o == "Asc" then n <=> c
        elsif o == "Des" then c <=> n
        else c
        end
    }
end