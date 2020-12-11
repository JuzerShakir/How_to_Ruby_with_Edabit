##########
=begin
Create a function to extract the name of the subreddit from its URL.

	sub_reddit("https://www.reddit.com/r/funny/") ➞ "funny"

	sub_reddit("https://www.reddit.com/r/relationships/") ➞ "relationships"
	
	sub_reddit("https://www.reddit.com/r/mildlyinteresting/") ➞ "mildlyinteresting"
	
=end
##########

def reddit url
	# using regular exp
	str = url.scan(/(\w+)\/\z/)
	return str
end

puts "Enter the URL: "
url = gets.chop

puts reddit url
# below are 2 methods of regular exp we can give to extract desired results but first 1 is more accurate
#str = "https://www.reddit.com/r/funny/".scan(/(\w+)\/\z/) 
#str = "https://www.reddit.com/r/funny/".scan(/r\/(\w+)/)

