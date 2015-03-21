def get_factors n
  result = []
  start = 1
  while start <=n
    result << start if n%start == 0
    start+=1
  end
  result
end