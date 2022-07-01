def spelling(w)
    (1..w.length).map { | i | w.slice(0..i-1) }
 end