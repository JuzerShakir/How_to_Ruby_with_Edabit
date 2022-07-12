def char_appears(str, c)
    str.split.map { |w| w.scan(/#{c}/i).count }
end