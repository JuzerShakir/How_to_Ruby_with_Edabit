########## Build on 11.07.2022
########## Ruby version ruby 3.1.2

def simplify_frac(str)
    n, d = str.scan(/\d+/).map(&:to_i)
    gcd = n.gcd(d)
    return "#{n/gcd}/#{d/gcd}"
end