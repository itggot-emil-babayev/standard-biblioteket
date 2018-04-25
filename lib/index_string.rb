# Public: Give the index of the substring start in string
# 
# str - The String we are looking in
# substr = The String (substring) we are looking for
#
# Examples
#
#   contains_string("foobar", "bar")
#   # => 3
#
#   contains_string("foobar", "baz")
#   # => nil
#
# Returns the index of the substring start
def index_string(str, substr)
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
                return index
            end
        end
        i+=1
    end
end
