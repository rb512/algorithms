def sum_difference(n)
  sum = (n*(n+1)/2)
  sum_of_squares = n*(n+1)*(2*n +1)/6
  (sum*sum)-sum_of_squares
end