# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)
  # find index of r's but ignore when r is the last letter
  indices_of_r = (0..string.length - 2).select{|n| string[n] == "r" || string[n] == "R"}
  letters = ""
  # extract letters at indices of r + 1
  indices_of_r.each {|n|
    letters += string[n + 1]}
  letters
end
