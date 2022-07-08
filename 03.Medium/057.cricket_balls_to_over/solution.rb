def total_overs(b)
    o, br = b.divmod(6)
    if br == 0
        o
    elsif o == 0
        br / 10.0
    else
        "#{o} overs and #{br} balls were bowled by the bowler."
    end
end