t = gets.to_i
   t.times{
      (n, c, m) = gets.split.map{|i| i.to_i}
       total_wrappers = n/c
       remainder = total_wrappers
       answer = total_wrappers
       while remainder >= m
           answer+=remainder/m
           remainder = remainder%m + remainder/m
       end
        puts answer
   }
