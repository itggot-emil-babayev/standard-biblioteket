# Public: Checks if string ends with substring
# 
# str - The String to check
# substr - The String to look for
#
# Examples
#
#   ends_with("Are you my mommy?", "?")
#   # => true
#
# Returns a Boolean if the substring is the last character
def ends_with(str, substr)
    if str[str.length - 1] == substr
        return true
    else
        return false
    end
end