def  lonelyinteger( a) 
    a.each_with_object(Hash.new(0)) {|i,count| count[i] +=1}.key(1)
end
a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
print lonelyinteger(b)
