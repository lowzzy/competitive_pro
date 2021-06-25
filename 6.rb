n = gets.to_i
str = gets.split(" ")

a = 0
b = 0
i = 0

str.map! do |s|
    s = s.to_i
end

str.sort!.reverse!

str.each do |s|
    if i % 2 == 0
        a +=  s.to_i
    else
        b += s.to_i
    end
    i += 1
end

puts a - b