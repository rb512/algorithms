def maxXor(l, r)
    arr = []
    (l..r).each do |x|
        j=x
        (j..r).each do |y|
            xor = x^y
            arr << xor
        end
    end
    arr.max
end
l = gets.to_i
r = gets.to_i
print maxXor(l, r)