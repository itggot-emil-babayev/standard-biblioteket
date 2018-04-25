# Public: How many times a string contains a substring
# 
# str - The String we are looking in
# substr = The String (substring) we are looking for
#
# Examples
#
#   count_string("omg omg omg", "omg")
#   # => 3
#
#   count_string("foobar", "baz")
#   # => 0
#
# Returns the index of the substring start
def count_string(str, substr)
    i = 0
    matches = 0
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
                matches += 1
            end
        end
        i+=1
    end
    return matches
end
