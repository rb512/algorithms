no_of_tests = gets.chomp.to_i

no_of_tests.times do 
    input = gets.chomp.to_i
    if input == 0 or input == 1
    puts "#{input +1}"
    else
        i = 0
        result = 0
        while i <= input
            if i%2 == 0
                result += 1
            else
                result *= 2
            end
            i +=1
        end
        puts "#{result}"
    end
end
