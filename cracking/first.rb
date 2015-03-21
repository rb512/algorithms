def is_unique(str)
  arr = []
  input = str.split('')
  input.each {|x| arr << x unless arr.include?(x)}
  input == arr
end

