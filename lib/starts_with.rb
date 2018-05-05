# Public: Checks if string starts with substring
# 
# str - The String to check
# substr - The String to look for
#
# Examples
#
#   starts_with("Are you my mommy?", "?")
#   # => false
#
# Returns a Boolean if the substring is the first character
def starts_with(str, substr)
    if str[0] == substr
        return true
    else
        return false
    end
end