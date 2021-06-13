######### Build on 10 May 2021
########## Ruby version ruby 2.7.2p137

def reverse(str)
  arr = str.split("")

  rev_str = ""

  arr.reverse_each do | char |
     rev_str << char
  end

  return rev_str
end

p reverse("Think different.")
