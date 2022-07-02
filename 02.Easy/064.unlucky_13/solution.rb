def unlucky_13(arr)
    arr.reject{ |num| num % 13 == 0 }
end