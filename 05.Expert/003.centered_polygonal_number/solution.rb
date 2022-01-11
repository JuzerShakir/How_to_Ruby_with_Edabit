require 'ordinalize_full/integer'

def is_polygon(n)
    return "Oth of all" if n == 1

    k = 3
    ans = 0
    output = []

    loop do
        i = 0
        polygon_nums = [1]

        loop do
            i+=1
            ans = k * i + polygon_nums.last
            output.append("#{i.ordinalize} #{k}-gonal number") if ans == n

            if ans >= n
                k+=1
                break
            else
                polygon_nums.append(ans)
            end
        end
        break if i == 1 && ans >= n
    end

    if output.empty?
        return false
    else
        return output
    end

end

n = gets.chomp.to_i

p is_polygon(n)
