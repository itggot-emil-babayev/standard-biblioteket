require_relative('contains_string.rb')
# Public: Checks if string contains char
# 
# str - The String we are looking in
# contains_this = The Char we are looking for
#
# Examples
#
#   contains_string("foobar", "b")
#   # => true
#
#   contains_string("foobar", "z")
#   # => false
#
# Returns whether the string contains the char
def contains_char(str, char)
    return contains_string(str, char)
end