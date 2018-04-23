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