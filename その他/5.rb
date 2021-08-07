array = gets.split(" ")

n = array[0].to_i
a = array[1].to_i
b = array[2].to_i

ret = 0
(n+1).times do |n_i|
    sum = 0
    i = n_i
    while i >= 1
        sum += i % 10
        i /= 10
    end
    if a <= sum && sum <= b 
        ret += n_i
    end
end

puts ret