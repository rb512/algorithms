def find_first_n_primes(n)
  result = []
  result << 2
  result << 3
  counter = 4
  
  while result.size < n
    result << counter if is_prime(counter)
    counter += 1
  end
  result
end

def is_prime(n)
  result = false
  if n <=3
    result = n > 1
  elsif n%2==0 || n%3==0
    result = false
  else
    i = 5
    while i*i <=n
      if n%i == 0 or n%(i+2) == 0
        return false
      end
      i += 6
    end
    result = true
  end
  result
end