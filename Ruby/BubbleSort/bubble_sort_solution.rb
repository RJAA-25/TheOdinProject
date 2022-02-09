def bubble_sort(arr)
    is_sorted = []
    is_finished = false
    until is_finished
        for i in 0...(arr.length - 1)
            left = arr[i]
            right = arr[i + 1]
            if left > right
                arr[i] = right
                arr[i + 1] = left
                is_sorted.push(false)
            else 
                is_sorted.push(true)
            end
        end
        is_sorted.all?(true) ? is_finished = true : is_sorted.clear
    end
    arr
end

p bubble_sort([4,3,78,2,0,2])