# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

# remove non-word characters
# split string into array of words
# extract words at even indices

def alternate_words(string)
  to_ignore = "! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |".split(" ")
  to_ignore.each { |char|
    string = string.gsub(char, " ")}
  words = string.split(" ")
  result = []
  indices = (0..(words.length - 1))
  even_indices = indices.select {|n| n.even?}
  even_indices.each {|n| result << words[n]}
  result
end

  # regex attempt didn't work - can't remove apostrophes
  # no_punctuation = string.gsub(/[^a-zA-Z0-9\s']/,"")
