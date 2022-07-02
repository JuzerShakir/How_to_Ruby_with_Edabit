def mirror(arr)
    arr.concat(arr.reverse.slice(1..))
end