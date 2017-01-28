# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]


#If first parameter is true, following pairs will return true if different, false if same
# If false, opposite
# nil is equivalent to false
# 0 is equiv to true
# iterate through array in 2s (each slice)


def match_maker (param1, *pairs)
  result = []
  if param1
    pairs.each_slice(2) { |a,b| result << a != b}
  else
    pairs.each_slice(2) { |a,b| result << a == b}
  end
  result
end
