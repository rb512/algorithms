test_cases = gets.chomp.to_i
test_cases.times do 
    input = gets.chomp
    arr = input.split(//).map(&:to_i)
    result = []
    arr.each do |x|
        if x!=0 and input.to_i%x ==0
            result << x
        end
    end
    puts result.size
end