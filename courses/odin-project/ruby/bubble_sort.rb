# frozen_string_literal: true

def bubble_sort(array)
  loop do
    swapped = false

    for i in 0..(array.length - 1)
      temporary = array[i]
      comp = array[i] <=> array[i + 1]
      
      if comp == 1
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if swapped == false
  end
  p array
end

bubble_sort([4,3,78,2,0,2])