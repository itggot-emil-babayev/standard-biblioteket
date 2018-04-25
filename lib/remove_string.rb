# Public: Remove the substring from the returned string
# 
# str - The String we are looking in
# substr = The String (substring) we are removing
#
# Examples
#
#   remove_string("omg omg omg", " ")
#   # => "omgomgomg"
#
#   remove_string("foobar", "ba")
#   # => "foor"
#
# Returns the index of the substring start
def remove_string(str, substr)
    output = ""
    i = 0
    while i < str.length
        if str[i] == substr[0]
            index = i
            match = true
            j = 0
            while j < substr.length
                if str[i + j] != substr[j]
                    match = false
                end
                j+=1
            end

            if match == true
                i += substr.length
            end
        end
        output += str[i] unless str[i] == nil
        i+=1
    end
    return output
end