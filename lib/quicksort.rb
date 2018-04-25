# Public: Sorts an Array with the Quicksort algorithm
# 
# arr - The Array that will be sorted
#
# Examples
#
#   quicksort([7,3,1,3])
#   # => [1,3,3,7]
#
# Returns the sorted Array
def quicksort(arr)
    return arr if arr.length <= 1

    pivot = arr.pop
    smaller = arr.map{|x| x if x <= pivot}.compact
    bigger = arr.map{|x| x if x > pivot}.compact

    return quicksort(smaller) + [pivot] + quicksort(bigger)
end