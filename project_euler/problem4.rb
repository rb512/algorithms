result = []
(100000..999999).each do |x|
  if x.to_s == x.to_s.reverse
    result << x unless result.include?(x)
  end
end
result.reverse
result.each do |x|
     (100..999).each do |j|
      if x%j == 0 and x/j < 1000
    puts "factors of #{x} : #{j}, #{x/j}"
    exit
   end
 end
end