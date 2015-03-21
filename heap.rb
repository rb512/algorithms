class Heap
 attr_accessor :count, :heap

 def initialize()
  @count = 0
  @heap = []
 end
  
 def add(value)
  @heap[@count] = value
  @count +=1
  min_heapify
  @heap
 end

 def min_heapify
  i = count-1
  while i > 0 and @heap[i] < @heap[(i-1)/2]
   @heap[i], @heap[(i-1)/2] = @heap[(i-1)/2], @heap[i]
   i = (i-1)/2
  end
 end

end
