# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.


class BeerSong

  attr_accessor :number

  def initialize (number)
    if number < 0
      number = 0
    elsif number > 99
      number = 99
    end
    self.number = number
  end

  def print_song
    number.downto 1 do |i|
      print_verse i
    end
  end

  def print_verse(n)
    if n.zero?
      ""
    else
      puts "#{written_number n} #{sing_or_plural n} of beer on the wall,",
           "#{written_number n} #{sing_or_plural n} of beer,",
           "Take one down, pass it around,",
           "#{written_number n - 1} #{sing_or_plural n-1} of beer on the wall."
    end
  end


  def sing_or_plural(n)
    if n == 1
      'bottle'
    else 'bottles'
    end
  end

  def written_number(n)
    if n >= 0 && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{written_number n/10*10}-#{written_number n%10}"
    end.capitalize
  end
end
