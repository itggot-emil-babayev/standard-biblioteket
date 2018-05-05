require_relative('./left_strip.rb')
require_relative('./right_strip.rb')
# Public: Strips the string of whitespace
# 
# str - The String we stripping
#
# Examples
#
#   strip("       foobar      ")
#   # => "foobar"
#
#   strip("       foobar")
#   # => "foobar"
#
# Returns the stripped string
def strip(str)
    return right_strip(left_strip(str))
end