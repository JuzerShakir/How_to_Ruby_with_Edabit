def reverse(str)
  arr = str.split("")

  arr.reverse!

  rev_str = arr.join

  return rev_str
end

p reverse("Think different.")
