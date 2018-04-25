# Public: Replace the string's substring with something else
# 
# str - The String we are looking in
# substr = The String (substring) we are replacing
# replace_with = The String we are replacing with
#
# Examples
#
#   replace_string("omg omg omg", "omg", "lul")
#   # => "lul lul lul"
#
# Returns the replaced string
def replace_string(str, substr, replace_with)
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
                output += replace_with
                i += substr.length - 1
            end
        else
            output += str[i] unless str[i] == nil
        end
        i+=1
    end
    return output
end