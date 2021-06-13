def hamming_distance str1, str2

  # proceed only if length of both str is same
  if str1.length == str2.length
    # init ham value
    ham = 0
    # looping through str with index
    str1.each_char.with_index do | c, i |
      # increament hams value if both strings char dont match with respect to index
      ham += 1 if str1[i] != str2[i]
    end
  end
  # output
  return ham
end

# input
p hamming_distance("abcde", "bcdef")
