# Public: Sorts an Array with the Bubble sort algorithm
# 
# arr - The Array that will be sorted
#
# Examples
#
#   bubble_sort([7,3,1,3])
#   # => [1,3,3,7]
#
# Returns the sorted Array
def bubble_sort(arr)
    arr = arr.dup
    
    unless sorted?(arr)
        i = 0
        while i < arr.length - 1
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
            end
            i+=1
        end
        p arr
    end

    return arr
end

# Public: Helper function, checks if array is sorted
# 
# arr - The Array that will be checked
#
# Examples
#
#   sorted?([7,3,1,3])
#   # => false
# 
#   sorted?([1,3,3,7])
#   # => true
#
# Returns whether the Array is sorted or not
def sorted?(arr)
    i = 0
    while i < arr.length - 1
        if arr[i] > arr[i + 1]
            return false
        end
        i+=1
    end

    return true
end