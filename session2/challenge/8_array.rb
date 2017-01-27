# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

# iterate over array 3 at a time
# check if a == b && a == c

def got_three? (array)
  result = []
  array.each_cons(3) {|a, b, c| result << (a == b && a == c) }
  result.include? (true)
end
