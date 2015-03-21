# largest prime factor of 600851475143
def prime_factors(n)
  result = []
  i = 2
  while n > i
    while n%i == 0
      result << i unless result.include?(i)
      n/=i
    end
    i +=1
    if i*i > n and n > 1
      result << n
      break
    end
   end
 result
 end
 
 def largest_prime_factor(n)
   result = prime_factors(n)
   result.max
 end
 
