test_cases = gets.chomp.to_i
test_cases.times do 
    input = gets.chomp.to_i
    if input%2==0
        puts (input/2) * (input/2)
    else
        x = (input.to_f/2).ceil
        puts x*(input-x)
    end 
end