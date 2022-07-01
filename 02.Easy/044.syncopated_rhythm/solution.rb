def has_syncopation(beats)
    (1..beats.length).step(2).any? { | i | beats[i] == '#' }
end