def cap_to_front(s)
  # init empty str
  upcase = ""
  # scans for upcase chars in string and loops through each of them
  s.scan(/[A-Z]/) do |char|
    # append those upcase char to different var
    upcase << char
  end

  # now we delete those upcase chars from original str (input)
  s.delete!(upcase)
  # and add upcase chars as a prefix to input str
  s.prepend(upcase)
  # output
  return s
end

# explicit input
inputs = ["hApPy", "moveMENT", "aPPlE", "shOrtCAKE", "LlLlLlLlL"]
# looping through each input
inputs.each do | input |
  puts cap_to_front(input)
end

=begin (OUPUT)
  APhpy
  MENTmove
  PPEal
  OCAKEshrt
  LLLLLllll
=end
