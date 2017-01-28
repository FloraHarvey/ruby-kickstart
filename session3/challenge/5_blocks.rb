# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(array, &block)
    num_rows_index = array.length - 1
    num_columns_index = array[0].length - 1

    array[0].each(&block)
    array[1..(num_rows_index)].each do
      |row| row[-1].each(&block)
      end

    array[num_rows_index]



end

# call block in order:
# array[0].each
# array[1][-1]
# array[2][-1] etc... array[n][-1]
# array[n][[-3..-2]
