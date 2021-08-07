sum = 0

1001.times do |i|
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
end

puts sum
