# Public: Slices a String
# 
# str - The String that is sliced
# start - The Integer of the starting position (default = 0)
# stop - The Integer of the stopping position
#
# Examples
#
#   slice("FOO", 1)
#   # => "F"
#
#   slice("Hello World", 2, 8)
#   # => "llo Wo"
#
# Returns the sliced string
def slice(str, start=0, stop)
    output = ""
    i = start
    while i < stop
        output << str[i]
        i+=1
    end
    return output
end