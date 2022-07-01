def left_digit(num)
	return num.match(/\d/) { |m| m.to_s.to_i }
end