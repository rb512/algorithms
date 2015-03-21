
def get_triangle_number n
  result = n*(n+1)/2
end

def get_factors n
  divisors = 0
  i = 1
  while i*i < n
    if n%i == 0
      divisors += 2
    end
    i +=1
  end
  divisors
end

def get_triangle_index max
  n = 1
  while get_factors((n+1)/2)*get_factors(n) <= max
    n += 1
    if get_factors(n/2) * get_factors(n+1) > max
      break
    end
    n +=1
  end
  get_triangle_number n
end