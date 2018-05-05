# Public: Chomp the string
# 
# str - The String to chomp
#
# Examples
#
#   chomp("Hi!\n")
#   # => "Hi!"
#   chomp("Hello!")
#   # => "Hello!"
#
# Returns a chomped String if the string ends with newline, otherwise returns the string
def chomp(str)
    if str[str.length - 1] == "\n"
        i = 0
        output = ""
        while i < str.length - 1
            output << str[i]
            i+=1
        end
        return output
    else
        return str
    end
end