def running_athlete act, path
  # init empty str for output
  result = ""

  # looping through char in 'path' with index 'i'
  path.each_char.with_index do | c, i |
    # checking if string and lists' corresponding characters match
    if c == "_" && act[i] == "run" || c == "|" && act[i] == "jump"
      result << c
    # if conditions dont match:
    elsif c == "_" && act[i] != "run"
      result << "x"
    elsif c == "|" && act[i] != "jump"
      result << "/"
    end
  end

  #output
  return result
end

# => input
p running_athlete(["run", "jump", "run", "jump", "run"], "_|_|_")
p running_athlete(["run", "jump", "run", "run", "run"], "_|_|_")
p running_athlete(["jump", "jump", "jump", "jump", "jump"],"_|_|_")
p running_athlete(["jump","jump","jump","jump","jump","jump","jump","jump","jump","jump"],"__________")

# => output
# "_|_|_"
# "_|_/_"
# "x|x|x"
# "xxxxxxxxxx"
