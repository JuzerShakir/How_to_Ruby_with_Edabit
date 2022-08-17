def gold_distribution(arr)
    mubhashir = []
    matt = []
    mubhashir_matt = []

    arr.length.times { mubhashir_matt << if arr.first >= arr.last then arr.shift else arr.pop end }
    # p mubhashir_matt
    mubhashir_matt.each_with_index { |e, i| if i.even? then mubhashir << e else matt << e end }
    # p mubhashir, matt
    [mubhashir.sum, matt.sum]
end