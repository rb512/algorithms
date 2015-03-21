no_of_tests = gets.chomp.to_i
no_of_tests.times do
    test_cases = gets.chomp.split.map! {|i| i.to_i}
    input = gets.chomp.split.map! {|i| i.to_i}
    if input.select {|i| i<=0}.size >= test_cases[-1]
        puts "NO"
    else
        puts "YES"
    end
end
