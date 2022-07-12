def box_seq(n)
    blocks = 0
    n.times do |i|
        if i.even? then blocks+=3 else blocks-=1 end
    end
    blocks
end