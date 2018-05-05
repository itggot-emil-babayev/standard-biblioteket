# Public: Strips the string of whitespace to the left
# 
# str - The String we stripping
#
# Examples
#
#   left_strip("foobar      ")
#   # => "foobar      "
#
#   left_strip("       foobar")
#   # => "foobar"
#
# Returns the stripped string
def left_strip(str)
    output = ""
    whitespace = "\n\t "
    i = 0
    left = true
    while i < str.length
        if !left
            output << str[i]
        elsif !whitespace.include? str[i]
            left = false
            output << str[i]
        end
        i+=1
    end
    return output
end 