class Array
  
<<-DOC
Takes an array as input to return a subset of that input array
such that, the sum of consecutive elements in the subset is the greatest 
possible in the input array.  
example : 
1) [3,-2,4,5,0,8]  : returns [3,-2,4,5]
2) [-3,-2,4,5,0,8] : returns [4,5]  
3) empty array returns an empty array
4) nil returns nil
5) array with single element returns the same array
DOC
def max_slice
  if self.nil? or self.length <=1
    self
  else
    start_index = 0
    result_array = []
    result = 0
    while result < self.max 
      result_array = sample(self,start_index)
      result = result_array.inject{|sum,x| sum+x}
      start_index+=1 #increment the start_index to get a new subset
    end
    result_array
  end
end

private 
def sample(array, start_index)
  sum, max = 0,0
  current_index = 0
  (0...array.length).each do |x|
   sum += array[x]
   if max < sum
     max = sum
     current_index += 1
   end
  end
  array.slice(start_index, current_index)
end
end