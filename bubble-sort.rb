# bubble-sort.rb

def bubble_sort(nums_array)
  
  swapped = nil

  until swapped == false do

    swapped = false

    # Start with the second element and compare pairs of elements
    for i in 1...nums_array.length

      if nums_array[i - 1] > nums_array[i]
        temp = nums_array[i -1]
        nums_array[i-1] = nums_array[i]
        nums_array[i] = temp
        swapped = true
      end

    end
  end

  nums_array

end

def main
  nums_array = [8,7,6,5,4,3,2,1]
  p bubble_sort(nums_array)

  nums_array = [1,2,3,4,5,6,7,8]
  p bubble_sort(nums_array)
end

main()