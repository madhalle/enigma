class Key
  attr_reader :key, :a_key, :b_key, :c_key, :d_key
  def initialize
    @key = key
    @a_key = a_key
    @b_key = b_key
    @c_key = c_key
    @d_key = d_key
  end

  def generate
    @key = '0' + rand(9999).to_s
  end
end
# The Keys
# The keys are created by generating a random

# five digit number, like 02715, and splitting it up like so:
#
# A key: first two digits (02)
# B key: second and third digits (27)
# C key: third and fourth digits (71)
# D key: fourth and fifth digits (15)
# The Offsets
# The offsets are found using the date of transmission.
#
# Consider the date formatted as a number, DDMMYY. If the date is August 4, 1995, it would be represented as 040895.
# Square the numeric form (1672401025)
# Take the last four digits (1025)
# A offset: The first digit (1)
# B offset: The second digit (0)
# C offset: The third digit (2)
# D offset: The fourth digit (5)
# You should be able to generate random numbers with leading
# zeros. In the example shown, the random number was 2715, so
# it should be zero padded to make it a five digit number (02715)
# Your translation should only translate using lowercase
#  letters. If a letter is uppercase, it should use the lowercase
#   translation, so in the example above, “HELLO WORLD” would still
#   translate to “keder ohulw”
# If you encounter a character not in the character set
# , it should be translated as itself. Using the example above,
#  “hello world!” should be translated as “keder ohulw!”
