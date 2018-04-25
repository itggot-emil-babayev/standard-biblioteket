# Public: Sorts an Array with the Insertion sort algorithm
# 
# arr - The Array that will be sorted
#
# Examples
#
#   insertion_sort([7,3,1,3])
#   # => [1,3,3,7]
#
# Returns the sorted Array
def insertion_sort(arr)
    output = [arr[0]]
    i = 1
    while i < arr.length
        j = 1
        while j < output.length
            if arr[i] < output[j]
                output.insert(j - 1)
            end
            j+=1
        end
        i+=1
    end
    return arr
end

p insertion_sort([3,1,7,3])