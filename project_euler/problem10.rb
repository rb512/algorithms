def primes(n)
  result = [nil, nil, *2..n]
  (2..Math.sqrt(n)).each do |i|
    puts "i #{i}"
    puts "result :  #{result}"
    (i**2..n).step(i) do |m| 
      result[m] = nil 
      puts "m :#{m}, i : #{i}, result #{i}th pass : #{result} " 
    end if result[i]
    puts "result : #{result}"
    result.compact
  end
  result
end