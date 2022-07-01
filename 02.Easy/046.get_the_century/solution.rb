def century(year)
    nearest_hund = year.round(-2)

    nearest_hund += 100 if (1..49).include?(year%100)

    century = nearest_hund.to_s.byteslice(0, 2).to_i

    def output(century, ord)
      "#{century}#{ord} century"
    end

    return output(century, 'th') if (11..13).include?(century)

    case century % 10
    when 1 then output(century, 'st')
    when 2 then output(century, 'nd')
    when 3 then output(century, 'rd')
    else output(century, 'th')
    end
end