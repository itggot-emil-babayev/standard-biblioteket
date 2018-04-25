# Public: Checks if string contains substring
# 
# str - The String we are looking in
# contains_this = The String (substring) we are looking for
#
# Examples
#
#   contains_string("foobar", "bar")
#   # => true
#
#   contains_string("foobar", "baz")
#   # => false
#
# Returns whether the string contains the substring
def contains_string(str, contains_this)
    i = 0
    contains = false
    while i < str.length
        if str[i] == contains_this[0]
            match = true
            j = 0
            while j < contains_this.length
                if str[i + j] != contains_this[j]
                    match = false
                end
                j+=1
            end

            if match == true
                contains = true
            end
        end
        i+=1
    end
    return contains
end
