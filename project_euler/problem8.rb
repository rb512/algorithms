def max_slice(number,length)
 array = number.to_s.split('')
 result = []
 head = 0
 temp = ""
  while head < array.length-13
    result << array.slice(head,length).join
		head +=1
	end
  prod = {}
  result.each do |i|
    temp = i
    product = 1
    i.split('').each do |x|
      product *= x.to_i
    end
    prod[temp]=product
  end
  prod.sort_by {|key,value| value}[-1]
end