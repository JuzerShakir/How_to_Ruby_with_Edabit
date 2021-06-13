######### Build on 08 Jun 2021
########## Ruby version ruby 2.7.2p137
#
def hacker_speak(str)
  # giving hash as we need to change multiple chars of the input
  new_str = {
    "a" => "4",
    "e" => "3",
    "i" => "1",
    "o" => "0",
    "s" => "5"
  }

  # this method will replace with new chars in hash
  str.gsub!(/[aeios]/, new_str)

  # returns updated str
  return str
end

puts hacker_speak("javascript is cool")
