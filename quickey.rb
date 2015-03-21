quicksort([100,3,-1,4,9,2,0,-55,15,2,4,-1,102,9])
# auxillary arrays
def quicksort(array)
  return array if array.length <= 1

  pivot_index = (array.length / 2).to_i
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

  lesser = []
  greater = []

  array.each do |x|
    if x <= pivot_value
      lesser << x
    else
      greater << x
    end
  end

  return quicksort(lesser) + [pivot_value] + quicksort(greater)
end


#inplace
def partition_array(array, left, right, pivot_index)
  puts "left: #{left}, right: #{right}, pivot_index: #{pivot_index}"
  puts "array: #{array}"
  pivot = array[pivot_index]
  puts " pivot : #{pivot}"
  array[right], array[pivot_index] = array[pivot_index], array[right]
  puts "first swap : #{array}"
  store_index = left
  puts "store_index: #{store_index}, pivot : #{pivot}"
  
  (left...right).each do |x|
    if array[x] >= pivot
      array[x], array[store_index] = array[store_index], array[x]
      puts "array : #{array}"
      store_index +=1
      puts "store_index : #{store_index}, array[store_index] : #{array[store_index]}"
    end
  end
  puts " array[store_index] : #{array[store_index]}, array[right] : #{array[right]}"
  array[store_index], array[right] = array[right], array[store_index]
  puts " array[store_index] : #{array[store_index]}, array[right] : #{array[right]}, store_index: #{store_index}"
  store_index
end

def inplace_quickey(array, left, right)
  if left < right
    puts "left : #{left}, right: #{right}"
    pivot_index = (left + (right-left/2))
    new_index = partition_array(array, left, right, pivot_index)
    inplace_quicksort(array, left, new_index-1)
    inplace_quicksort(array, new_index+1, right)
  end
  array
end