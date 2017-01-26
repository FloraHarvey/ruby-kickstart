# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    indices = (0..self.length - 1).to_a
    str = ""
    even_indices = indices.select {|n| n.even?}
    even_indices.each do |n|
      str += self.slice(n)
    end
    str
  end
end
