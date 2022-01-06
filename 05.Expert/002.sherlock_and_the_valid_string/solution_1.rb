def is_valid (str)
    str_uniq = str.downcase.split('').uniq.join

    char_count = Hash.new()

    str_uniq.each_char do | char |
    # counts for each characters in string
     char_count.store(char, str.count(char))
    end
    #p char_count

    # returning hash, grouping by count number, which tells us how many characters have similar counts
    grp_char_count = char_count.values.group_by { | v | v }
    #p grp_char_count

    grp_char_occurance = Array.new
    # The value of key is list, the length of each list tells how many chars are of that same count
    grp_char_count.each { | k , v | grp_char_occurance.append(v.count) }
    #p grp_char_occurance

    # if user has input just a single char, or..
    # if user has input a char whose occurance in string is just once
    if grp_char_occurance.length == 1 || grp_char_occurance.any?(1)
        return "YES"
    else
        return "NO"
    end

end

str = gets.chomp
p is_valid(str)