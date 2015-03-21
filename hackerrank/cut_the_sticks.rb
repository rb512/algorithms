test_size = gets.chomp.to_i
input = gets.chomp.split.map(&:to_i)
while input.size > 0 do
   input = input.map {|x| x -= input.min}
    puts input.size
    input.delete 0
end