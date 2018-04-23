def quicksort(arr)
    return arr if arr.length <= 1

    pivot = arr.pop
    smaller = arr.map{|x| x if x <= pivot}.compact
    bigger = arr.map{|x| x if x > pivot}.compact

    return quicksort(smaller) + [pivot] + quicksort(bigger)
end