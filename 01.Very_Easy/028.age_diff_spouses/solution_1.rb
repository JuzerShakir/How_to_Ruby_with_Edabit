########## Created at 14 Jan 2021
########## Ruby version ruby 2.7.2p137

def age_diff(ages)
  # age of oldest spouse
  spouse_1 = ages.max
  # finds the index of spouse_1 from the user input..
  # .. and deletes that entry from the list by that index
  ages.delete_at(ages.index(spouse_1))

  # age of second younger spouse
  spouse_2 = ages.max
  ages.delete_at(ages.index(spouse_2))

  # we have taken ages of parents from list..
  # ..now highest age in the list will be of oldest child
  oldest_child = ages.max

  # AS PER NOTES....
  # abort if the age difference between spouses should not be more than 18 years
  spouse_diff = spouse_1 - spouse_2
  if spouse_diff > 18 then abort "Spouse age difference is greater than 18 years." end

  # AS PER NOTES
  case spouse_diff
    when 0
      return "No age difference between spouses."
    when 1
      return "1 year"
  end

  # AS PER NOTES
  # will terminate the program if age diff between..
  # .. youngest spouse and oldest child is less than 20
  spouse_child = spouse_2 - oldest_child
  if spouse_child < 20 then abort "Younger spouse who is aged #{spouse_2} is not older than the Oldest child aged #{oldest_child} by 20 years." end

  #outputs age difference between spouses
  return "#{spouse_diff} years."
end

# asks user for input
puts 'Enter an array of ages of your house members: '
ages = gets.chomp.split(',').map(&:to_i)

# if list input contains 0 as ages, its deleted! Multiple entries too!
ages.delete(0)

# length of list should be atleast 3 since we need ages of both parents and atleast a child
if ages.length > 2 then p age_diff(ages)
else abort "List shoild have atleast ages of both parents and a child." end
