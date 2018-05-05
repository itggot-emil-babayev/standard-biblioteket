# Public: Strips the string of whitespace to the right
# 
# str - The String we stripping
#
# Examples
#
#   right_strip("foobar      ")
#   # => "foobar"
#
#   right_strip("       foobar")
#   # => "       foobar"
#
# Returns the stripped string
def right_strip(str)
    output = ""
    whitespace = "\n\t "
    right = true
    i = str.length - 1
    while i >= 0
        if !right
            output << str[i]
        elsif !whitespace.include?(str[i])
            right = false
            output << str[i]
        end
        i-=1
    end
    return output.reverse
end