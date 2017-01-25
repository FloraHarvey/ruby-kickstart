# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"


def odds_and_evens(string, return_odds)
  indices = (0..string.length - 1).to_a
  new_string = ""
  if return_odds
    odd_indices = indices.select {|n| n.odd?}
    odd_indices.each do |n|
      new_string += string.slice(n)
    end
  else
    even_indices = indices.select {|n| n.even?}
    even_indices.each do |n|
      new_string += string.slice(n)
    end
  end
  new_string
end
