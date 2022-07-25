def bubble_sort(arr)
    ordered = false
    
    while !ordered
        ordered = true

        (0...arr.length-1).each do |idx|
            if arr[idx] > arr[idx+1]
                arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
                ordered = false
            end
        end
    end

    arr
end

p bubble_sort([4,3,78,2,0,2]) # => [0,2,2,3,4,78]