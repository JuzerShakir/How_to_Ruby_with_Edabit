def dice_game(arr)
    unless arr.any? { |throw| throw.uniq! } then arr.flatten.sum else 0 end
end