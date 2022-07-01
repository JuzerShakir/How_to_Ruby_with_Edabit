def index_shuffle(str)
    (str.chars.select.with_index{ |c, i| i.even? } +
    str.chars.select.with_index{ |c, i| i.odd? }).join
end