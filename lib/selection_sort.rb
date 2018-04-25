# Public: Sorts an Array with the Selection sort algorithm
# 
# arr - The Array that will be sorted
#
# Examples
#
#   selection_sort([7,3,1,3])
#   # => [1,3,3,7]
#
# Returns the sorted Array
def selection_sort(arr)
    arr = arr.dup
    smallest_pos = 0

    unless sorted?(arr)
        i = smallest_pos
        that_pos = 0
        smallest = arr[i]
        
        while i < arr.length
            if arr[i] < smallest
                that_pos = i
                smallest = arr[i]
            end
            i+=1
        end
        
        arr[smallest_pos], arr[that_pos] = arr[that_pos], arr[smallest_pos]
        smallest_pos += 1
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

p selection_sort([3,1,3,7])