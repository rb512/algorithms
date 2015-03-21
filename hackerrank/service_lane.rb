test_given = gets.chomp.split.map {|i| i.to_i}
tests = test_given.last
lane_width = gets.chomp.split.map {|i| i.to_i}
tests.times do 
    range = gets.chomp.split.map {|x| x.to_i}
    temp = []
    (range.first..range.last).each do |j|
        temp << lane_width[j]
    end
    puts "#{temp.min}"
end